/* DataAcquisition.hpp
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

#ifndef VIPER_ONBOARD_DATA_ACQUISITION_HPP
#define VIPER_ONBOARD_DATA_ACQUISITION_HPP

#include <xpcc/processing/timer/periodic_timer.hpp>
#include <cmath>

#include "Communicator.hpp"
#include "../hardware_rev1.hpp"

namespace viper
{
namespace onboard
{

//using GroundstationCommunicator = Communicator<GroundstationPackets, Board::Rxsm::TelemetryUart>;
using GroundstationCommunicator = Communicator<GroundstationPackets, Board::Ui::DebugUart>;

class DataAcquisition
{
public:
	DataAcquisition(GroundstationCommunicator& communicator_);
	DataAcquisition(const DataAcquisition&) = delete;
	DataAcquisition& operator=(const DataAcquisition&) = delete;

	void start();
	void stop();
	bool isRunning();

	void setLowRate();
	void setHighRate();
	void setStorageEnabled(bool enabled);

	void update();

private:
	void resetTimers();

	template<typename PacketT>
	void sendIceTemperatures();

	template<typename PacketT>
	void sendOtherTemperatures();

	template<typename PacketT>
	void sendHPDepth();

	template<typename PacketT>
	void sendPressure();

	template<typename PacketT>
	void sendHPTemperatures();

	GroundstationCommunicator& communicator;
	bool enabled = false;
	bool highRate = false;
	bool storageEnabled = false;

	static constexpr uint16_t iceTempHighTimeout = 667;
	static constexpr uint16_t iceTempLowTimeout = 3000;
	xpcc::ShortPeriodicTimer iceTempTimer;

	static constexpr uint16_t otherTempHighTimeout = 5000;
	static constexpr uint16_t otherTempLowTimeout = 10000;
	xpcc::ShortPeriodicTimer otherTempTimer;

	static constexpr uint16_t depthHighTimeout = 500;
	static constexpr uint16_t depthLowTimeout = 10000;
	xpcc::ShortPeriodicTimer depthTimer;

	static constexpr uint16_t pressureHighTimeout = 50;
	static constexpr uint16_t pressureLowTimeout = 200;
	xpcc::ShortPeriodicTimer pressureTimer;

	static constexpr uint16_t hpTempHighTimeout = 667;
	static constexpr uint16_t hpTempLowTimeout = 10000;
	xpcc::ShortPeriodicTimer hpTempTimer;

	// state of fake data generation
	uint8_t iceTempState;
	uint8_t otherTempState;
	uint8_t depthState;
	uint8_t pressureState;
	uint8_t hpTempState;
};

template<typename PacketT>
void DataAcquisition::sendIceTemperatures()
{
	iceTempState++;

	PacketT packet;
	for(size_t index = 0; index < packet.temperatures.size(); ++index) {
		packet.temperatures[index] = 1024 * (20*sin(iceTempState / 20.0f) - 50 - index);
	}

	communicator.sendPacket(packet);
}

template<typename PacketT>
void DataAcquisition::sendOtherTemperatures()
{
	otherTempState++;

	PacketT packet;
	for(size_t index = 0; index < packet.temperatures.size(); ++index) {
		packet.temperatures[index] = (10*sin(otherTempState / 3.0f) + 20 - index);
	}

	communicator.sendPacket(packet);
}

template<typename PacketT>
void DataAcquisition::sendHPDepth()
{
	depthState++;
	depthState = (depthState <= 100) ? depthState : 0;

	PacketT packet;
	for(size_t index = 0; index < packet.depth.size(); ++index) {
		packet.depth[index] = depthState - index;
	}

	communicator.sendPacket(packet);
}

template<typename PacketT>
void DataAcquisition::sendPressure()
{
	PacketT packet;
	for(size_t index = 0; index < packet.values.size(); ++index) {
		packet.values[index] = 100 * sin(pressureState++ / 20.0f) + 200;
	}

	communicator.sendPacket(packet);
}

template<typename PacketT>
void DataAcquisition::sendHPTemperatures()
{
	hpTempState++;

	PacketT packet;
	for(size_t index = 0; index < packet.temperatures.size(); ++index) {
		packet.temperatures[index] = 1024 * (20*sin(hpTempState / 20.0f) + 100 - index);
	}

	communicator.sendPacket(packet);
}

}
}

#endif // VIPER_ONBOARD_DATA_ACQUISITION_HPP
