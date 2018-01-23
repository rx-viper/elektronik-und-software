/* DataAcquisition.cpp
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

#include "DataAcquisition.hpp"
#include "HeatprobeControl.hpp"

namespace viper
{
namespace onboard
{

DataAcquisition::DataAcquisition(GroundstationCommunicator& communicator_)
	: communicator{communicator_},
	  pressureSensor1{I2cAddress::Pressure1},
	  pressureSensor2{I2cAddress::Pressure2},
	  otherTempSensor1{I2cAddress::OtherTemp1},
	  otherTempSensor2{I2cAddress::OtherTemp2},
	  otherTempSensor3{I2cAddress::OtherTemp3},
	  otherTempSensor4{I2cAddress::OtherTemp4},
	  otherTempSensor5{I2cAddress::OtherTemp5},
	  pressureSampler1{pressureSensor1},
	  pressureSampler2{pressureSensor2},
	  otherTempSampler1{otherTempSensor1},
	  otherTempSampler2{otherTempSensor2},
	  otherTempSampler3{otherTempSensor3},
	  otherTempSampler4{otherTempSensor4},
	  otherTempSampler5{otherTempSensor5},
	  iceTempTimer{0},
	  hpTempTimer{0},
	  hpDepthTimer{0},
	  adcTimer{0}
{
	iceTempTimer.stop();
	hpTempTimer.stop();
	hpDepthTimer.stop();
	adcTimer.stop();
}

void DataAcquisition::initialize()
{
	timeout.restart(Timeouts::Initialize);

	bool allInitialized = false;
	while(!timeout.isExpired() && !allInitialized) {
		iceTemperatureSampler.update();
		pressureSampler1.update();
		pressureSampler2.update();
		/*otherTempSampler1.update();
		otherTempSampler2.update();
		otherTempSampler3.update();
		otherTempSampler4.update();
		otherTempSampler5.update();*/
		adcSampler.update();

		allInitialized = iceTemperatureSampler.isInitialized()
				&& pressureSampler1.isInitialized()
				&& pressureSampler2.isInitialized()
				&& otherTempSampler1.isInitialized()
				&& otherTempSampler2.isInitialized()
				&& otherTempSampler3.isInitialized()
				&& otherTempSampler4.isInitialized()
				&& otherTempSampler5.isInitialized()
				&& adcSampler.isInitialized();
	}
}

void DataAcquisition::start()
{
	highRate = true;
	setLowRate();

	iceTemperatureSampler.startMeasurement();
	adcSampler.startSampling();
}

void DataAcquisition::setLowRate()
{
	if(highRate) {
		highRate = false;
		iceTempTimer.restart(Timeouts::LowRate::IceTemp);
		hpTempTimer.restart(Timeouts::LowRate::HeatProbeTemp);
		adcTimer.restart(Timeouts::LowRate::Adc);
		hpDepthTimer.restart(Timeouts::LowRate::HeatProbeDepth);
		pressureSampler1.start(Timeouts::LowRate::Pressure, PressureValuesPerPacketLow);
		pressureSampler2.start(Timeouts::LowRate::Pressure, PressureValuesPerPacketLow);
		/*otherTempSampler1.start(Timeouts::LowRate::OtherTemp);
		otherTempSampler2.start(Timeouts::LowRate::OtherTemp);
		otherTempSampler3.start(Timeouts::LowRate::OtherTemp);
		otherTempSampler4.start(Timeouts::LowRate::OtherTemp);
		otherTempSampler5.start(Timeouts::LowRate::OtherTemp);*/
	}
}

void DataAcquisition::setHighRate()
{
	if(!highRate) {
		highRate = true;
		iceTempTimer.restart(Timeouts::HighRate::IceTemp);
		hpTempTimer.restart(Timeouts::HighRate::HeatProbeTemp);
		adcTimer.restart(Timeouts::HighRate::Adc);
		hpDepthTimer.restart(Timeouts::HighRate::HeatProbeDepth);
		pressureSampler1.start(Timeouts::HighRate::Pressure, PressureValuesPerPacketHigh);
		pressureSampler2.start(Timeouts::HighRate::Pressure, PressureValuesPerPacketHigh);
		/*otherTempSampler1.start(Timeouts::HighRate::OtherTemp);
		otherTempSampler2.start(Timeouts::HighRate::OtherTemp);
		otherTempSampler3.start(Timeouts::HighRate::OtherTemp);
		otherTempSampler4.start(Timeouts::HighRate::OtherTemp);
		otherTempSampler5.start(Timeouts::HighRate::OtherTemp);*/
	}
}

void DataAcquisition::setStorageEnabled(bool enabled)
{
	storageEnabled = enabled;
}

void DataAcquisition::update()
{
	if(iceTempTimer.execute()) {
		if(iceTemperatureSampler.isFinished()) {
			for(int i = 0; i < 3; ++i) {
				auto hpTempData = iceTemperatureSampler.data(HpTempSensorIndex[i], HpTempChannelIndex[i]);
				if(!hpTempData.isValid()) {
					// set to invalid value to trigger emergency off
					hpTemp[i] = HeatprobeControl::InvalidTemperature;
				} else {
					hpTemp[i] = hpTempData.getTemperatureInteger();
				}
				HeatprobeControl::setTemperature(i, hpTemp[i]);
			}

			if(highRate) {
				sendIceTemperatures<packet::IceTemperatureHS>();
			} else {
				sendIceTemperatures<packet::IceTemperatureLS>();
			}
		}
		iceTemperatureSampler.startMeasurement();
	}

	if(hpTempTimer.execute()) {
		if(highRate) {
			sendHPTemperatures<packet::HpTemperatureHS>();
		} else {
			sendHPTemperatures<packet::HpTemperatureLS>();
		}
	}

	if(adcTimer.execute()) {
		if(highRate) {
			sendHPPower<packet::HpPowerHS>();

			battVoltageHS[battVoltageHSIndex++] = adcSampler.getDataAndReset(Ad7928Sampler::Sensor::BattVoltage);
			if(battVoltageHSIndex >= battVoltageHS.size()) {
				battVoltageHSIndex = 0;
				sendBattVoltageHS<packet::BattVoltageHS>();
			}

			motorCurrentHS[motorCurrentHSIndex++] = adcSampler.getDataAndReset(Ad7928Sampler::Sensor::MotorCurrent);
			if(motorCurrentHSIndex >= motorCurrentHS.size()) {
				motorCurrentHSIndex = 0;
				sendMotorCurrentHS<packet::MotorCurrentHS>();
			}
		} else {
			sendHPPower<packet::HpPowerLS>();
			sendBattVoltageLS<packet::BattVoltageLS>();
			sendMotorCurrentLS<packet::MotorCurrentLS>();
		}
	}

	if(hpDepthTimer.execute()) {
		if(highRate) {
			sendHPDepth<packet::HpPenetrationDepthHS>();
		} else {
			sendHPDepth<packet::HpPenetrationDepthLS>();
		}
	}

	/*if(otherTempSampler1.isFinished()) &&
			otherTempSampler2.isFinished() &&
			otherTempSampler3.isFinished() &&
			otherTempSampler4.isFinished() &&
			otherTempSampler5.isFinished())
	{
		otherTempSampler1.resetFinished();
		otherTempSampler2.resetFinished();
		otherTempSampler3.resetFinished();
		otherTempSampler4.resetFinished();
		otherTempSampler5.resetFinished();

		if(highRate) {
			sendOtherTemperatures<packet::OtherTemperatureHS>();
		} else {
			sendOtherTemperatures<packet::OtherTemperatureLS>();
		}
	}*/

	if(pressureSampler1.isFinished() && pressureSampler2.isFinished()) {
		if(highRate) {
			sendPressure<packet::PressureHS>();
		} else {
			sendPressure<packet::PressureLS>();
		}

		pressureSampler1.resetFinished();
		pressureSampler2.resetFinished();
	}

	iceTemperatureSampler.update();
	pressureSampler1.update();
	pressureSampler2.update();
	/*otherTempSampler1.update();
	otherTempSampler2.update();
	otherTempSampler3.update();
	otherTempSampler4.update();
	otherTempSampler5.update();*/

	adcSampler.update();

	/*if(depthTimer.execute()) {
		if(highRate) {
			sendHPDepth<packet::HpPenetrationDepthHS>();
		} else {
			sendHPDepth<packet::HpPenetrationDepthLS>();
		}
	}
	*/

	if(communicator.isPacketAvailable()) {
		const GroundstationPackets& p = communicator.getPacket();
		const auto* testModePacket = p.get<viper::packet::TestMode>();
		if(testModePacket) {
			this->testMode = testModePacket->enabled;
		}
		communicator.dropPacket();
	}
}

bool DataAcquisition::isHpTempChannel(size_t sensorIndex, size_t channelIndex)
{
	for (size_t i = 0; i < 3; ++i) {
		if(HpTempSensorIndex[i] == sensorIndex && HpTempChannelIndex[i] == channelIndex) {
			return true;
		}
	}

	return false;
}

}
}
