/* Amsys5915Sensor.hpp
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
#define VIPER_ONBOARD_AMSYS5915_SENSOR_HPP

#include <xpcc/processing/resumable.hpp>
#include <xpcc/driver/pressure/amsys5915.hpp>
#include <limits>

namespace viper
{
namespace onboard
{

template<typename I2cMaster>
class Amsys5915Sensor : public xpcc::NestedResumable<1>
{
public:
	using Data = uint32_t;
	static constexpr Data MaxPressure = std::numeric_limits<Data>::max() - 1;
	static constexpr Data InvalidValue = std::numeric_limits<Data>::max();

	Amsys5915Sensor(uint8_t address);

	xpcc::ResumableResult<void>
	initialize();

	xpcc::ResumableResult<uint32_t>
	measure();

private:
	xpcc::Amsys5915<I2cMaster> sensor;
	xpcc::amsys5915::Data data;
};

}
}

#include "Amsys5915Sensor_impl.hpp"

#endif // VIPER_ONBOARD_AMSYS5915_SENSOR_HPP

