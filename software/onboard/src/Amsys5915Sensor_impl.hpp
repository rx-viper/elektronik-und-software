/* Amsys5915Sensor_impl.hpp
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

#ifndef VIPER_ONBOARD_AMSYS5915_SENSOR_HPP
	#error "Do not use this file directly, include Amsys5915Sensor.hpp instead!"
#endif

#include <algorithm>
#include "Amsys5915Sensor.hpp"

namespace viper
{
namespace onboard
{

template<typename I2cMaster>
Amsys5915Sensor<I2cMaster>::Amsys5915Sensor(uint8_t address) : sensor{data}
{
	sensor.setAddress(address);
}

template<typename I2cMaster>
xpcc::ResumableResult<void> Amsys5915Sensor<I2cMaster>::initialize()
{
	RF_BEGIN();
	RF_END();
}

template<typename I2cMaster>
xpcc::ResumableResult<uint32_t> Amsys5915Sensor<I2cMaster>::measure()
{
	RF_BEGIN();
	RF_CALL(sensor.readPressure());
	RF_END_RETURN(std::min<uint32_t>(sensor.getData().getPressure() * MaxPressure, MaxPressure));
}

}
}
