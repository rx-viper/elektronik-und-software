/* Experiment.hpp
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

#ifndef VIPER_ONBOARD_EXPERIMENT_HPP
#define VIPER_ONBOARD_EXPERIMENT_HPP

#include <xpcc/processing/resumable.hpp>
#include <xpcc/processing/protothread.hpp>
#include <xpcc/processing/timer/periodic_timer.hpp>
#include <xpcc/io/iostream.hpp>

#include "Communicator.hpp"
#include "DataAcquisition.hpp"

#undef  ACTIVITY_LOG_NAME
#define ACTIVITY_LOG_NAME "Experiment"

#include "Activity.hpp"

namespace viper
{
namespace onboard
{

using PiCommunicator = viper::onboard::Communicator<viper::packet::PiPackets, Board::Camera::PiUart>;

class Experiment : public xpcc::pt::Protothread, public xpcc::NestedResumable<10>
{
public:
	static constexpr uint16_t StatusPacketTimeout = 1000; // in ms
	static constexpr uint16_t PiCommandTimeout = 1000;
	static constexpr uint32_t MotorHppmDownPosition = 5555555;

	Experiment(GroundstationCommunicator& communicator_, PiCommunicator& piCommunicator, uint32_t experimentId_);
	Experiment(const Experiment&) = delete;
	Experiment& operator=(const Experiment&) = delete;

	void initialize();

	xpcc::ResumableResult<void>
	update();

	using Activity = packet::ExperimentState;

private:
	void sendStatus();
	void sendPiCommand();

	xpcc::ResumableResult<void>
	run();

	Activity activity = Activity::Initialize;

	GroundstationCommunicator& communicator;
	PiCommunicator& piCommunicator;
	DataAcquisition dataAcquisition;
	xpcc::PeriodicTimer statusPacketTimer;
	xpcc::PeriodicTimer piCommandPacketTimer;

	const uint32_t experimentId;

	static constexpr uint8_t cameraRecordingOn = 0xFF;
	static constexpr uint8_t cameraRecordingOff = 0x00;
	uint8_t cameraRecording = cameraRecordingOff;
	uint8_t cameraRecordingStatus = 0;
	uint32_t piStorageAvailable = 0;
};

xpcc::IOStream& operator<<(xpcc::IOStream& out, Experiment::Activity state);

}
}

#endif // VIPER_ONBOARD_EXPERIMENT_HPP
