/* SimpleSensorSampler_impl.hpp
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

#include "SimpleSensorSampler.hpp"

namespace viper
{

namespace onboard
{

template<typename Sensor, size_t MaxValues>
SimpleSensorSampler<Sensor, MaxValues>::SimpleSensorSampler(Sensor& sensor_)
	: sensor{sensor_}, timer{0}
{
	timer.stop();
	data.fill(Sensor::InvalidValue);
}

template<typename Sensor, size_t MaxValues>
void
SimpleSensorSampler<Sensor, MaxValues>::start(uint16_t timeout, size_t aggregateValues)
{
	if(aggregateValues > MaxValues) {
		XPCC_LOG_ERROR << "Value count out of range!" << xpcc::endl;
		aggregateValues = MaxValues;
	}

	if(!timer.isStopped() && numValues > 1) {
		// if data contains at least one valid measurement
		if(valueIndex != 0) {
			// set remaining values to invalid
			for(size_t i = valueIndex; i < numValues; ++i) {
				data[i] = InvalidValue;
			}

			finished = true;
		}
		restart = true;
	}

	timer.restart(timeout);
	valueIndex = 0;
	numValues = aggregateValues;
}

template<typename Sensor, size_t MaxValues>
void
SimpleSensorSampler<Sensor, MaxValues>::stop()
{
	timer.stop();
}

template<typename Sensor, size_t MaxValues>
bool
SimpleSensorSampler<Sensor, MaxValues>::isFinished() const
{
	return finished;
}

template<typename Sensor, size_t MaxValues>
void
SimpleSensorSampler<Sensor, MaxValues>::resetFinished()
{
	finished = false;
	data.fill(Sensor::InvalidValue);
}

template<typename Sensor, size_t MaxValues>
bool
SimpleSensorSampler<Sensor, MaxValues>::isStopped() const
{
	return timer.isStopped();
}

template<typename Sensor, size_t MaxValues>
xpcc::ResumableResult<void>
SimpleSensorSampler<Sensor, MaxValues>::update()
{
	PT_BEGIN();

	while(true) {
		PT_CALL(run());
	}

	PT_END();
}

template<typename Sensor, size_t MaxValues>
const typename SimpleSensorSampler<Sensor, MaxValues>::Data&
SimpleSensorSampler<Sensor, MaxValues>::getData(size_t valueIndex) const
{
	if(valueIndex >= MaxValues) {
		XPCC_LOG_ERROR << "Value count out of range!" << xpcc::endl;
		valueIndex = 0;
	}

	return data[valueIndex];
}

template<typename Sensor, size_t MaxValues>
xpcc::ResumableResult<void>
SimpleSensorSampler<Sensor, MaxValues>::run()
{
	ACTIVITY_GROUP_BEGIN()
	{
		DECLARE_ACTIVITY(Activity::Initialize)
		{
			RF_CALL(sensor.initialize());
			finished = true;
			CALL_ACTIVITY(Activity::Stopped);
		}

		DECLARE_ACTIVITY(Activity::Measurement)
		{
			data[valueIndex] = RF_CALL(sensor.measure());

			if(!restart) {
				++valueIndex;
				if(valueIndex >= numValues) {
					valueIndex = 0;
					finished = true;
				}
			} else {
				valueIndex = 0;
				restart = false;
			}
			CALL_ACTIVITY(Activity::Waiting);
		}

		DECLARE_ACTIVITY(Activity::Waiting)
		{
			RF_WAIT_UNTIL(timer.execute() || timer.isStopped());
			if(!timer.isStopped()) {
				CALL_ACTIVITY(Activity::Measurement);
			} else {
				CALL_ACTIVITY(Activity::Stopped);
			}
		}

		DECLARE_ACTIVITY(Activity::Stopped)
		{
			RF_WAIT_WHILE(timer.isStopped());
			CALL_ACTIVITY(Activity::Measurement);
		}
	}
	ACTIVITY_GROUP_END();
}

inline xpcc::IOStream& operator<<(xpcc::IOStream& out, SensorSamplerActivity state)
{
	switch(state) {
	case SensorSamplerActivity::Initialize:
		out << "Initialize" << xpcc::endl;
		break;
	case SensorSamplerActivity::Measurement:
		out << "Measurement" << xpcc::endl;
		break;
	case SensorSamplerActivity::Waiting:
		out << "Waiting" << xpcc::endl;
		break;
	case SensorSamplerActivity::Stopped:
		out << "Stopped" << xpcc::endl;
		break;
	default:
		out << "BUG! Unknown state" << xpcc::endl;
	}

	return out;
}

template<typename Sensor, size_t MaxValues>
bool SimpleSensorSampler<Sensor, MaxValues>::isInitialized() const
{
	return activity != Activity::Initialize;
}

}
}

