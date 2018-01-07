/* Ltc2984Sampler.hpp
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

#ifndef VIPER_ONBOARD_LTC2984_SAMPLER_HPP
#define VIPER_ONBOARD_LTC2984_SAMPLER_HPP

#include <xpcc/processing/timer/periodic_timer.hpp>
#include <xpcc/processing/protothread.hpp>
#include <xpcc/driver/temperature/ltc2984.hpp>

#include <array>
#include <memory>

#include "Ltc2984Config.hpp"
#include "Ltc2984Thread.hpp"
#include "../hardware_rev1.hpp"

namespace viper
{
namespace onboard
{

class Ltc2984Sampler : protected xpcc::pt::Protothread, protected xpcc::NestedResumable<2>
{
public:
	using Data = xpcc::ltc2984::Data;

	enum class Activity
	{
		Finished,
		Measurement,
		FetchResult
	};

	static constexpr size_t SensorCount{6};
	static constexpr uint16_t MeasurementTimeout{171*6};
	static constexpr uint16_t ResultTimeout{5};

	Ltc2984Sampler();

	xpcc::ResumableResult<void>
	update();

	void
	startMeasurement();

	bool
	isFinished();

	bool
	isDataValid(size_t sensor);

	bool
	isInitialized();

	const Data&
	data(size_t sensor, size_t channel);

	size_t
	channelCount(size_t sensor) const;

private:
	inline bool allSensorsFinished() const;

	xpcc::ResumableResult<void>
	run();

	std::array<std::unique_ptr<Ltc2984ThreadBase>, SensorCount> threads;
	std::array<bool, SensorCount> validData = {};
	xpcc::ShortTimeout timeout;
	bool startNextMeasurement = false;

	Activity activity = Activity::Finished;
};

xpcc::IOStream& operator<<(xpcc::IOStream& out, Ltc2984Sampler::Activity state);

}
}

#endif // VIPER_ONBOARD_LTC2984_SAMPLER_HPP
