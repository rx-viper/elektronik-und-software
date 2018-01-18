/* SimpleSensorSampler.hpp
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

#ifndef VIPER_ONBOARD_SIMPLE_SENSOR_SAMPLER_HPP
#define VIPER_ONBOARD_SIMPLE_SENSOR_SAMPLER_HPP

#include <xpcc/processing/timer/periodic_timer.hpp>
#include <xpcc/processing/protothread.hpp>

#include <vector>
#include <memory>

#include "Activity.hpp"

namespace viper
{
namespace onboard
{

// Must be defined outside of class for operator<< ...
enum class SensorSamplerActivity
{
	Initialize,
	Measurement,
	Waiting,
	Stopped,
};

template <typename Sensor, size_t MaxValues = 1>
class SimpleSensorSampler : protected xpcc::NestedResumable<5>, protected xpcc::pt::Protothread
{
public:
	static_assert (MaxValues > 0, "Invalid value count");

	using Data = typename Sensor::Data;
	using Activity = SensorSamplerActivity;
	static constexpr auto InvalidValue = Sensor::InvalidValue;

	SimpleSensorSampler(Sensor& sensor_);

	void start(uint16_t timeout, size_t aggregateValues = 1);
	void stop();

	bool isFinished() const;
	bool isInitialized() const;
	void resetFinished();

	bool isStopped() const;

	xpcc::ResumableResult<void> update();

	const Data& getData(size_t valueIndex = 0) const;
	size_t valueCount() const;
private:
	xpcc::ResumableResult<void>
	run();

	Sensor& sensor;

	std::array<Data, MaxValues> data;
	size_t valueIndex = 0;
	size_t numValues = 1;

	Activity activity = Activity::Initialize;
	xpcc::PeriodicTimer timer;
	bool finished = false;
	bool restart = false;
	bool initialized = false;
};

inline xpcc::IOStream& operator<<(xpcc::IOStream& out, SensorSamplerActivity state);

}
}

#include "SimpleSensorSampler_impl.hpp"

#endif // VIPER_ONBOARD_SIMPLE_SENSOR_SAMPLER_HPP

