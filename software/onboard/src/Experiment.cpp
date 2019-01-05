/* Experiment.cpp
 *
 * Copyright (C) 2017 Christopher Durand
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <xpcc/architecture/platform.hpp>

#include "Experiment.hpp"
#include "RxsmEvents.hpp"
#include "Communicator.hpp"
#include "Motor.hpp"
#include "HeatprobeControl.hpp"

namespace viper
{
namespace onboard
{

Experiment::Experiment(GroundstationCommunicator& communicator_, PiCommunicator& piCommunicator_, uint32_t experimentId_)
	: communicator{communicator_},
	  piCommunicator{piCommunicator_},
	  dataAcquisition{communicator_},
	  statusPacketTimer{StatusPacketTimeout},
	  piCommandPacketTimer{PiCommandTimeout},
	  experimentId{experimentId_}
{
}

void Experiment::initialize()
{
	dataAcquisition.initialize();
	dataAcquisition.setStorageEnabled(false);
	dataAcquisition.setLowRate();
	dataAcquisition.start();
}

xpcc::ResumableResult<void>
Experiment::update()
{
	if(RxsmEvents::eventOccurred()) {
		statusPacketTimer.restart(StatusPacketTimeout);
		sendStatus();
		RxsmEvents::acknowledge();
	}

	if(statusPacketTimer.execute()) {
		sendStatus();
	}

	if(piCommandPacketTimer.execute()) {
		sendPiCommand();
	}

	dataAcquisition.update();

	if(piCommunicator.isPacketAvailable()) {
		const packet::PiPackets& p = piCommunicator.getPacket();
		const auto* piStatusPacket = p.get<viper::packet::PiStatus>();
		if(piStatusPacket) {
			this->cameraRecordingStatus = piStatusPacket->recordingEnabled;
			this->piStorageAvailable = piStatusPacket->storageAvailable;
		}
		piCommunicator.dropPacket();
	}

	PT_BEGIN();
	while(1) {
		PT_CALL(run());
	}
	PT_END();
}

void Experiment::sendStatus()
{
	packet::Status status;

	status.time = xpcc::Clock::now().getTime();
	status.lo = RxsmEvents::liftOff();
	status.soe = RxsmEvents::startOfExperiment();
	status.sods = RxsmEvents::startOfDataStorage();
	status.hpOvertemperature =  HeatprobeControl::isOvertemperature(0) ? 0b001 : 0;
	status.hpOvertemperature |= HeatprobeControl::isOvertemperature(1) ? 0b010 : 0;
	status.hpOvertemperature |= HeatprobeControl::isOvertemperature(2) ? 0b100 : 0;
	status.state = activity;
	status.motorPosition = Motor::getPosition();
	status.testModeEnabled = dataAcquisition.testMode;
	status.experimentId = experimentId;
	status.piRecordingEnabled = this->cameraRecordingStatus;
	status.piStorageAvailable = this->piStorageAvailable;
	communicator.sendPacket(status);
}

void Experiment::sendPiCommand()
{
	packet::PiCommand packet;
	packet.recordingEnabled = this->cameraRecording;
	packet.experimentId = this->experimentId;
	packet.onboardTime = xpcc::Clock::now().getTime();
	piCommunicator.sendPacket(packet);
}

xpcc::ResumableResult<void>
Experiment::run()
{
	ACTIVITY_GROUP_BEGIN()
	{
		DECLARE_ACTIVITY(Activity::Initialize)
		{
			Board::Camera::LightPin::set();
			CALL_ACTIVITY(Activity::HomeMotor);
		}

		DECLARE_ACTIVITY(Activity::HomeMotor)
		{
			Motor::home();
			RF_WAIT_UNTIL(Motor::isHomed());
			CALL_ACTIVITY(Activity::Idle);
		}

		DECLARE_ACTIVITY(Activity::Idle)
		{
			if(RxsmEvents::startOfDataStorage() ||
					RxsmEvents::liftOff() || RxsmEvents::startOfExperiment()) {
				// TODO: Enable lens heater
				if(dataAcquisition.testMode != 0) {
					this->cameraRecording = cameraRecordingOff;
				} else {
					this->cameraRecording = cameraRecordingOn;
				}
				CALL_ACTIVITY(Activity::DataStorageStarted);
			}

			RF_YIELD();
			CALL_ACTIVITY(Activity::Idle);
		}

		DECLARE_ACTIVITY(Activity::DataStorageStarted)
		{
			if(RxsmEvents::liftOff() || RxsmEvents::startOfExperiment()) {
				dataAcquisition.setStorageEnabled(true);
				CALL_ACTIVITY(Activity::LiftedOff);
			} else if (!RxsmEvents::startOfDataStorage()) {
				// Abort SODS => disable pi recording
				this->cameraRecording = cameraRecordingOff;
				CALL_ACTIVITY(Activity::Idle);
			}

			RF_YIELD();
			CALL_ACTIVITY(Activity::DataStorageStarted);
		}

		DECLARE_ACTIVITY(Activity::LiftedOff)
		{
			if(RxsmEvents::startOfExperiment()) {
				CALL_ACTIVITY(Activity::StartExperiment);
			}

			RF_YIELD();
			CALL_ACTIVITY(Activity::LiftedOff);
		}

		DECLARE_ACTIVITY(Activity::StartExperiment)
		{
			dataAcquisition.setHighRate();
			Motor::setPosition(MotorHppmDownPosition);
			RF_WAIT_UNTIL(Motor::isPositionReached());
			Motor::disable();

			if(dataAcquisition.testMode == 0) {
				HeatprobeControl::setOn();
			}

			CALL_ACTIVITY(Activity::ExperimentRunning);
		}

		DECLARE_ACTIVITY(Activity::ExperimentRunning)
		{
			if(!RxsmEvents::startOfExperiment()) {
				CALL_ACTIVITY(Activity::StopExperiment);
			}

			RF_YIELD();
			CALL_ACTIVITY(Activity::ExperimentRunning);
		}

		DECLARE_ACTIVITY(Activity::StopExperiment)
		{
			// TODO: stop
			HeatprobeControl::setOff();
			dataAcquisition.setLowRate();
			Motor::home();
			CALL_ACTIVITY(Activity::PrepareShutdown);
		}

		DECLARE_ACTIVITY(Activity::PrepareShutdown)
		{
			// TODO: stop
			HeatprobeControl::setOff();
			dataAcquisition.setLowRate();
			Motor::home();

			RF_WAIT_UNTIL(!RxsmEvents::startOfDataStorage());

			// TODO: Disable lens heater
			this->cameraRecording = cameraRecordingOff;
			Board::Camera::LightPin::reset();
			RF_YIELD();

			viper::packet::PiShutdown packet;
			packet.dummy = 0x42;
			piCommunicator.sendPacket(packet);

			communicator.flushFlashWriter();

			CALL_ACTIVITY(Activity::Shutdown);
		}

		DECLARE_ACTIVITY(Activity::Shutdown)
		{
			RF_YIELD();
			CALL_ACTIVITY(Activity::Shutdown);
		}
	}

	ACTIVITY_GROUP_END();
}

xpcc::IOStream& operator<<(xpcc::IOStream& out, Experiment::Activity state)
{
	using Activity = Experiment::Activity;

	switch(state) {
	case Activity::Initialize:
		out << "Initialize" << xpcc::endl;
		break;
	case Activity::Idle:
		out << "Idle" << xpcc::endl;
		break;
	case Activity::DataStorageStarted:
		out << "DataStorageStarted" << xpcc::endl;
		break;
	case Activity::LiftedOff:
		out << "LiftedOff" << xpcc::endl;
		break;
	case Activity::StartExperiment:
		out << "StartExperiment" << xpcc::endl;
		break;
	case Activity::ExperimentRunning:
		out << "ExperimentRunning" << xpcc::endl;
		break;
	case Activity::StopExperiment:
		out << "StopExperiment" << xpcc::endl;
		break;
	case Activity::Shutdown:
		out << "Shutdown" << xpcc::endl;
		break;
	default:
		out << "BUG! Unknown state" << xpcc::endl;
	}

	return out;
}

}
}
