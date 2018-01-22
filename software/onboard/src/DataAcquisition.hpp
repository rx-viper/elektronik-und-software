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
#include "Ad7928Sampler.hpp"
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
			static constexpr uint16_t Adc{500};
		};

		struct LowRate {
			static constexpr uint16_t IceTemp{3000};
			static constexpr uint16_t OtherTemp{10000};
			static constexpr uint16_t HeatProbeDepth{10000};
			static constexpr uint16_t Pressure{200};
			static constexpr uint16_t HeatProbeTemp{10000}; // change to 3*IceTemp = 9000 ?
			static constexpr uint16_t Adc{10000};
		};
	};

	// TODO: addresses
	struct I2cAddress {
		static constexpr uint8_t Pressure1{0x41};
		static constexpr uint8_t Pressure2{0x42};
		static constexpr uint8_t OtherTemp1{0x4B};
		static constexpr uint8_t OtherTemp2{0x1};
		static constexpr uint8_t OtherTemp3{0x1};
		static constexpr uint8_t OtherTemp4{0x1};
		static constexpr uint8_t OtherTemp5{0x1};
	};

	static constexpr uint16_t PressureValuesPerPacketHigh{20};
	static constexpr uint16_t PressureValuesPerPacketLow{5};

	static_assert (PressureValuesPerPacketHigh == packet::PressureHS().values.size(), "Invalid pressure value count");
	static_assert (PressureValuesPerPacketLow == packet::PressureLS().values.size(), "Invalid pressure value count");

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

	template<typename PacketT>
	void sendHPPower();

	template<typename PacketT>
	void sendBattVoltageLS();

	template<typename PacketT>
	void sendBattVoltageHS();

	template<typename PacketT>
	void sendMotorCurrentLS();

	template<typename PacketT>
	void sendMotorCurrentHS();

	GroundstationCommunicator& communicator;
	bool enabled = false;
	bool highRate = false;
	bool storageEnabled = false;

	Ltc2984Sampler iceTemperatureSampler;

	Ad7928Sampler adcSampler;

	PressureSensor pressureSensor1;
	PressureSensor pressureSensor2;
	OtherTemperatureSensor otherTempSensor1;
	OtherTemperatureSensor otherTempSensor2;
	OtherTemperatureSensor otherTempSensor3;
	OtherTemperatureSensor otherTempSensor4;
	OtherTemperatureSensor otherTempSensor5;

	static constexpr auto MaxPressureValues = std::max(PressureValuesPerPacketLow, PressureValuesPerPacketHigh);
	SimpleSensorSampler<PressureSensor, MaxPressureValues> pressureSampler1;
	SimpleSensorSampler<PressureSensor, MaxPressureValues> pressureSampler2;

	SimpleSensorSampler<OtherTemperatureSensor> otherTempSampler1;
	SimpleSensorSampler<OtherTemperatureSensor> otherTempSampler2;
	SimpleSensorSampler<OtherTemperatureSensor> otherTempSampler3;
	SimpleSensorSampler<OtherTemperatureSensor> otherTempSampler4;
	SimpleSensorSampler<OtherTemperatureSensor> otherTempSampler5;

	std::array<uint32_t, 3> hpTemp = {};
	std::array<uint16_t, 4> battVoltageHS = {};
	uint8_t battVoltageHSIndex = 0;
	std::array<uint16_t, 4> motorCurrentHS = {};
	uint8_t motorCurrentHSIndex = 0;

	xpcc::ShortTimeout timeout;

	xpcc::ShortPeriodicTimer iceTempTimer;
	xpcc::ShortPeriodicTimer hpTempTimer;
	xpcc::ShortPeriodicTimer hpDepthTimer;
	xpcc::ShortPeriodicTimer adcTimer;

public:
	bool testMode = false;
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
	static_assert(sizeof(PacketT::depth) == 3, "HpPenetrationDepthHS.depth length must be 3");
	PacketT packet;
	packet.depth[0] = Board::Encoders::Heatprobe1::getEncoderRaw();
	packet.depth[1] = Board::Encoders::Heatprobe2::getEncoderRaw();
	packet.depth[2] = Board::Encoders::Heatprobe3::getEncoderRaw();
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

template<typename PacketT>
void DataAcquisition::sendHPPower()
{
	using Sensor = viper::onboard::Ad7928Sampler::Sensor;
	PacketT packet;

	static const std::array<Sensor, 3> voltageSensors {Sensor::HP1Voltage, Sensor::HP2Voltage, Sensor::HP3Voltage};
	for(uint8_t index = 0; index < packet.voltage.size(); ++index)
	{
		packet.voltage[index] = adcSampler.getDataAndReset(voltageSensors[index]);
	}

	static const std::array<Sensor, 3> currentSensors {Sensor::HP1Current, Sensor::HP2Current, Sensor::HP3Current};
	for(uint8_t index = 0; index < packet.current.size(); ++index) {
		packet.current[index] = adcSampler.getDataAndReset(currentSensors[index]);
	}

	communicator.sendPacket(packet);
}

template<typename PacketT>
void DataAcquisition::sendBattVoltageLS()
{
	PacketT packet;
	packet.value = adcSampler.getDataAndReset(Ad7928Sampler::Sensor::BattVoltage);
	communicator.sendPacket(packet);
}

template<typename PacketT>
void DataAcquisition::sendBattVoltageHS()
{
	static_assert(sizeof(battVoltageHS) == sizeof(PacketT::values), "Size of battVoltageHS does not match packet size");
	PacketT packet;
	for(uint8_t index = 0; index < packet.values.size(); ++index) {
		packet.values[index] = battVoltageHS[index];
	}
	communicator.sendPacket(packet);

}

template<typename PacketT>
void DataAcquisition::sendMotorCurrentLS()
{
	PacketT packet;
	packet.value = adcSampler.getDataAndReset(Ad7928Sampler::Sensor::MotorCurrent);
	communicator.sendPacket(packet);

}

template<typename PacketT>
void DataAcquisition::sendMotorCurrentHS()
{
	static_assert(sizeof(motorCurrentHS) == sizeof(PacketT::values), "Size of motorCurrentHS does not match packet size");
	PacketT packet;
	for(uint8_t index = 0; index < packet.values.size(); ++index) {
		packet.values[index] = motorCurrentHS[index];
	}
	communicator.sendPacket(packet);
}

}
}

#endif // VIPER_ONBOARD_DATA_ACQUISITION_HPP
