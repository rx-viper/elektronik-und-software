/* Ad7928Sampler.hpp
 *
 * Copyright (C) 2018 Raphael Lehmann
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

#ifndef VIPER_ONBOARD_AD7928_SAMPLER_HPP
#define VIPER_ONBOARD_AD7928_SAMPLER_HPP

#include <xpcc/processing/timer/periodic_timer.hpp>
#include <xpcc/processing/protothread.hpp>
#include <xpcc/driver/adc/ad7928.hpp>

#include "average_variable_length.hpp"

#include <array>

#include "../hardware_rev1.hpp"

namespace viper
{
namespace onboard
{

class Ad7928Sampler : protected xpcc::pt::Protothread
{
public:
	enum class Sensor : uint8_t {
		HP1Current = 0,
		HP2Current = 1,
		HP3Current = 2,
		MotorCurrent = 3,
		HP1Voltage = 4,
		BattVoltage = 5,
		HP3Voltage = 6,
		HP2Voltage = 7
	};

public:
	using Data = xpcc::ad7928::Data;

	Ad7928Sampler();

	bool
	update();

	bool
	isInitialized() const;

	void
	startSampling();

	uint16_t
	getDataAndReset(Sensor sensor);

private:
	static constexpr uint16_t SamplePeriod = 5; // 200 Hz

	xpcc::ShortTimeout timeout;
	bool initialized;
	bool start;

	using Filter = viper::filter::Average<int32_t>;
	std::array<Filter, 8> filters;

	xpcc::ad7928::Data adcValue;
	uint_fast8_t currentChannel = 0;

	xpcc::Ad7928<Board::Powermanagement::Adc::Spi, Board::Powermanagement::Adc::Cs> adc;
};

}
}

#endif // VIPER_ONBOARD_AD7928_SAMPLER_HPP
