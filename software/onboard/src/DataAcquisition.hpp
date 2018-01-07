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

#include "Ltc2984Sampler.hpp"
#include "SimpleSensorSampler.hpp"

#include "Ds1731Sensor.hpp"
#include "Amsys5915Sensor.hpp"

namespace viper
{
namespace onboard
{

using GroundstationCommunicator = Communicator<GroundstationPackets, Board::Rxsm::TelemetryUart>;

class DataAcquisition
{
public:
	struct Timeouts {
		static constexpr uint16_t Initialize{1000};

		struct HighRate {
			static constexpr uint16_t IceTemp{1140};
			static constexpr uint16_t OtherTemp{5000};
			static constexpr uint16_t HeatProbeDepth{500};
			static constexpr uint16_t Pressure{50};
			static constexpr uint16_t HeatProbeTemp{1140};
		};

		struct LowRate {
			static constexpr uint16_t IceTemp{3000};
			static constexpr uint16_t OtherTemp{10000};
			static constexpr uint16_t HeatProbeDepth{10000};
			static constexpr uint16_t Pressure{200};
			static constexpr uint16_t HeatProbeTemp{10000}; // change to 3*IceTemp = 9000 ?
		};
	};

	// TODO: addresses
	struct I2cAddress {
		static constexpr uint8_t Pressure1{0x1};
		static constexpr uint8_t Pressure2{0x1};
		static constexpr uint8_t OtherTemp1{0x1};
		static constexpr uint8_t OtherTemp2{0x1};
		static constexpr uint8_t OtherTemp3{0x1};
		static constexpr uint8_t OtherTemp4{0x1};
		static constexpr uint8_t OtherTemp5{0x1};
	};

	static constexpr uint16_t PressureValuesPerPacketHigh{20};
	static constexpr uint16_t PressureValuesPerPacketLow{5};

	using PressureSensor = Amsys5915Sensor<Board::Sensors::PressureI2c>;
	using OtherTemperatureSensor = Ds1731Sensor<Board::Sensors::TemperatureI2c>;

	DataAcquisition(GroundstationCommunicator& communicator_);
	DataAcquisition(const DataAcquisition&) = delete;
	DataAcquisition& operator=(const DataAcquisition&) = delete;

	void initialize();

	void start();

	void setLowRate();
	void setHighRate();
	void setStorageEnabled(bool enabled);

	void update();

private:
	static bool isHpTempChannel(size_t sensorIndex, size_t channelIndex);

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

	Ltc2984Sampler iceTemperatureSampler;

	PressureSensor pressureSensor1;
	PressureSensor pressureSensor2;
	OtherTemperatureSensor otherTempSensor1;
	OtherTemperatureSensor otherTempSensor2;
	OtherTemperatureSensor otherTempSensor3;
	OtherTemperatureSensor otherTempSensor4;
	OtherTemperatureSensor otherTempSensor5;

	SimpleSensorSampler<PressureSensor, 20> pressureSampler1;
	SimpleSensorSampler<PressureSensor, 20> pressureSampler2;
	SimpleSensorSampler<OtherTemperatureSensor> otherTempSampler1;
	SimpleSensorSampler<OtherTemperatureSensor> otherTempSampler2;
	SimpleSensorSampler<OtherTemperatureSensor> otherTempSampler3;
	SimpleSensorSampler<OtherTemperatureSensor> otherTempSampler4;
	SimpleSensorSampler<OtherTemperatureSensor> otherTempSampler5;

	std::array<uint32_t, 3> hpTemp = {};

	xpcc::ShortTimeout timeout;

	xpcc::ShortPeriodicTimer iceTempTimer;
	xpcc::ShortPeriodicTimer hpTempTimer;
	xpcc::ShortPeriodicTimer hpDepthTimer;
};

template<typename PacketT>
void DataAcquisition::sendIceTemperatures()
{
	PacketT packet;

	size_t index = 0;
	for(size_t sensor = 0; sensor < iceTemperatureSampler.SensorCount; ++sensor) {
		size_t channelCount = iceTemperatureSampler.channelCount(sensor);

		for(size_t channel = 0; channel < channelCount; ++channel) {
			if(!isHpTempChannel(sensor, channel) && index < packet.temperatures.size()) {
				auto& data = iceTemperatureSampler.data(sensor, channel);
				packet.temperatures[index++] = data.getTemperatureFixed();
			}
		}
	}

	communicator.sendPacket(packet);
}

template<typename PacketT>
void DataAcquisition::sendOtherTemperatures()
{
	PacketT packet;

	static_assert(packet.temperatures.size() == 5, "Invalid other temperature count");

	packet.temperatures[0] = otherTempSampler1.getData();
	packet.temperatures[1] = otherTempSampler2.getData();
	packet.temperatures[2] = otherTempSampler3.getData();
	packet.temperatures[3] = otherTempSampler4.getData();
	packet.temperatures[4] = otherTempSampler5.getData();

	communicator.sendPacket(packet);
}

template<typename PacketT>
void DataAcquisition::sendHPDepth()
{
	PacketT packet;
//	packet.depth[] = ;
	communicator.sendPacket(packet);
}

template<typename PacketT>
void DataAcquisition::sendPressure()
{
	PacketT packet;
	for(size_t index = 0; index < packet.values.size(); ++index) {
		// TODO: sensor2
		packet.values[index] = pressureSampler1.getData(index);
	}

	communicator.sendPacket(packet);
}

template<typename PacketT>
void DataAcquisition::sendHPTemperatures()
{
	PacketT packet;

	static_assert(packet.temperatures.size() == 3, "Invalid heat probe temperature count");

	packet.temperatures[0] = hpTemp[0];
	packet.temperatures[1] = hpTemp[1];
	packet.temperatures[2] = hpTemp[2];

	communicator.sendPacket(packet);
}

}
}

#endif // VIPER_ONBOARD_DATA_ACQUISITION_HPP
