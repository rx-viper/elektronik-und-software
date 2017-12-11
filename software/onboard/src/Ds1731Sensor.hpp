/* Ds1731Sensor.hpp
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

#ifndef VIPER_ONBOARD_DS1731_SENSOR_HPP
#define VIPER_ONBOARD_DS1731_SENSOR_HPP

#include <xpcc/processing/resumable.hpp>
#include <xpcc/driver/temperature/ds1631.hpp>

namespace viper
{
namespace onboard
{

template<typename I2cMaster>
class Ds1731Sensor : public xpcc::NestedResumable<1>
{
public:
	using Data = int16_t;
	static constexpr Data InvalidValue = 0xFFFF;

	Ds1731Sensor(uint8_t address);

	xpcc::ResumableResult<void>
	initialize();

	xpcc::ResumableResult<int16_t>
	measure();

private:
	xpcc::Ds1631<I2cMaster> sensor;
	xpcc::ds1631::Data data;
};

}
}

#include "Ds1731Sensor_impl.hpp"

#endif // VIPER_ONBOARD_DS1731_SENSOR_HPP

