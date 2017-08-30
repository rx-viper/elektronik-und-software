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

namespace viper
{
namespace onboard
{

DataAcquisition::DataAcquisition(GroundstationCommunicator& communicator_)
	: communicator{communicator_}, iceTempTimer{iceTempLowTimeout}, otherTempTimer{otherTempLowTimeout},
	depthTimer{depthLowTimeout}, pressureTimer{pressureLowTimeout}, hpTempTimer{hpTempLowTimeout}
{
	iceTempState = otherTempState = 0;
	depthState = pressureState = hpTempState = 0;
}

void DataAcquisition::start()
{
	if(!enabled) {
		resetTimers();
	}

	enabled = true;
}

void DataAcquisition::stop()
{
	enabled = false;
}

bool DataAcquisition::isRunning()
{
	return enabled;
}

void DataAcquisition::setLowRate()
{
	if(highRate) {
		highRate = false;
		resetTimers();
	}
}

void DataAcquisition::setHighRate()
{
	if(!highRate) {
		highRate = true;
		resetTimers();
	}
}

void DataAcquisition::setStorageEnabled(bool enabled)
{
	storageEnabled = enabled;
}

void DataAcquisition::update()
{
	if(!enabled) {
		return;
	}

	if(iceTempTimer.execute()) {
		if(highRate) {
			sendIceTemperatures<packet::IceTemperatureHS>();
		} else {
			sendIceTemperatures<packet::IceTemperatureLS>();
		}
	}

	if(otherTempTimer.execute()) {
		if(highRate) {
			sendOtherTemperatures<packet::OtherTemperatureHS>();
		} else {
			sendOtherTemperatures<packet::OtherTemperatureLS>();
		}
	}

	if(depthTimer.execute()) {
		if(highRate) {
			sendHPDepth<packet::HpPenetrationDepthHS>();
		} else {
			sendHPDepth<packet::HpPenetrationDepthLS>();
		}
	}

	if(pressureTimer.execute()) {
		if(highRate) {
			sendPressure<packet::PressureHS>();
		} else {
			sendPressure<packet::PressureLS>();
		}
	}

	if(hpTempTimer.execute()) {
		if(highRate) {
			sendHPTemperatures<packet::HpTemperatureHS>();
		} else {
			sendHPTemperatures<packet::HpTemperatureLS>();
		}
	}
}

void DataAcquisition::resetTimers()
{
	if(highRate) {
		iceTempTimer.restart(iceTempHighTimeout);
		otherTempTimer.restart(otherTempHighTimeout);
		depthTimer.restart(depthHighTimeout);
		pressureTimer.restart(pressureHighTimeout);
		hpTempTimer.restart(hpTempHighTimeout);
	} else {
		iceTempTimer.restart(iceTempLowTimeout);
		otherTempTimer.restart(otherTempLowTimeout);
		depthTimer.restart(depthLowTimeout);
		pressureTimer.restart(pressureLowTimeout);
		hpTempTimer.restart(hpTempLowTimeout);

	}
}

}
}
