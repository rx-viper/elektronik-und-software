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

Experiment::Experiment(GroundstationCommunicator& communicator_)
	: communicator{communicator_}, dataAcquisition{communicator_}, statusPacketTimer{StatusPacketTimeout}
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

	dataAcquisition.update();

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

	communicator.sendPacket(status);
}

xpcc::ResumableResult<void>
Experiment::run()
{
	ACTIVITY_GROUP_BEGIN()
	{
		DECLARE_ACTIVITY(Activity::Initialize)
		{
			initialize();
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
				// TODO: Enable camera recording
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
				CALL_ACTIVITY(Activity::Idle);
			}

			RF_YIELD();
			CALL_ACTIVITY(Activity::DataStorageStarted);
		}

		DECLARE_ACTIVITY(Activity::LiftedOff)
		{
			if(RxsmEvents::startOfExperiment()) {
				CALL_ACTIVITY(Activity::StartExperiment);
			} else if(!RxsmEvents::liftOff()) {
				CALL_ACTIVITY(Activity::DataStorageStarted);
			}

			RF_YIELD();
			CALL_ACTIVITY(Activity::LiftedOff);
		}

		DECLARE_ACTIVITY(Activity::StartExperiment)
		{
			// TODO: start
			dataAcquisition.setHighRate();
			Motor::setPosition(MotorHppmDownPosition);
			RF_WAIT_UNTIL(Motor::isPositionReached());
			HeatprobeControl::setOn();
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
			// TODO: Disable camera recording

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
