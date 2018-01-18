/* Ltc2984Sampler.cpp
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

#include "Ltc2984Sampler.hpp"

#include "Activity.hpp"

#include <xpcc/debug/logger.hpp>
#include<algorithm>

namespace viper
{
namespace onboard
{

Ltc2984Sampler::Ltc2984Sampler()
{
	static_assert (SensorCount == 6, "Invalid sensor count");
	threads[0] = std::make_unique<Ltc2984Thread<Ltc2984Sensor1>>();
	threads[1] = std::make_unique<Ltc2984Thread<Ltc2984Sensor2>>();
	threads[2] = std::make_unique<Ltc2984Thread<Ltc2984Sensor3>>();
	threads[3] = std::make_unique<Ltc2984Thread<Ltc2984Sensor4>>();
	threads[4] = std::make_unique<Ltc2984Thread<Ltc2984Sensor5>>();
	threads[5] = std::make_unique<Ltc2984Thread<Ltc2984Sensor6>>();
}

xpcc::ResumableResult<void>
Ltc2984Sampler::update()
{
	for(auto& thread : threads) {
		thread->update();
	}

	PT_BEGIN();

	while(1) {
		PT_CALL(run());
	}

	PT_END();
}

void Ltc2984Sampler::startMeasurement()
{
	if(!isFinished()) {
		XPCC_LOG_ERROR << "A measurement is already running!" << xpcc::endl;
		return;
	}

	startNextMeasurement = true;
}

bool Ltc2984Sampler::isFinished()
{
	return activity == Activity::Finished;
}

bool Ltc2984Sampler::isDataValid(size_t sensor)
{
	if(sensor >= SensorCount) {
		XPCC_LOG_ERROR << "Invalid sensor index" << xpcc::endl;
		sensor = 0;
	}

	return validData[sensor];
}

bool Ltc2984Sampler::isInitialized()
{
	return std::all_of(threads.begin(), threads.end(), [](auto& thread) {
		return thread->isInitialized();
	});
}

const Ltc2984Sampler::Data&
Ltc2984Sampler::data(size_t sensor, size_t channel)
{
	if(sensor >= SensorCount) {
		XPCC_LOG_ERROR << "Invalid sensor index" << xpcc::endl;
		sensor = 0;
	}

	return threads[sensor]->getData(channel);
}

size_t Ltc2984Sampler::channelCount(size_t sensor) const
{
	if(sensor >= SensorCount) {
		XPCC_LOG_ERROR << "Invalid sensor index" << xpcc::endl;
		return 0;
	}

	return threads[sensor]->channelCount();
}

bool Ltc2984Sampler::allSensorsFinished() const
{
	return std::all_of(threads.begin(), threads.end(), [](auto& thread) {
		return thread->isFinished();
	});
}

xpcc::ResumableResult<void>
Ltc2984Sampler::run()
{
	ACTIVITY_GROUP_BEGIN()
	{
		DECLARE_ACTIVITY(Activity::Measurement)
		{
			startNextMeasurement = false;
			validData.fill(false);

			for(auto& thread : threads) {
				// skip sensor if it is not ready for the next measurement
				if(thread->isFinished()) {
					thread->startMeasurement();
				} else {
					// discard delayed result of skipped sensor
					thread->reset();
				}
			}

			timeout.restart(MeasurementTimeout);
			RF_WAIT_UNTIL(timeout.isExpired());

			CALL_ACTIVITY(Activity::FetchResult);
		}

		DECLARE_ACTIVITY(Activity::FetchResult)
		{
			for(auto& thread : threads) {
				thread->fetchResult();
			}

			timeout.restart(ResultTimeout);
			RF_WAIT_UNTIL(timeout.isExpired() || allSensorsFinished());

			for(size_t index = 0; index < threads.size(); ++index) {
				auto& thread = threads[index];
				validData[index] = thread->isFinished() && thread->isDataValid();
			}

			CALL_ACTIVITY(Activity::Finished);
		}

		DECLARE_ACTIVITY(Activity::Finished)
		{
			RF_WAIT_UNTIL(startNextMeasurement);
			CALL_ACTIVITY(Activity::Measurement);
		}
	}
	ACTIVITY_GROUP_END();
}

xpcc::IOStream& operator<<(xpcc::IOStream& out, Ltc2984Sampler::Activity state)
{
	using Activity = Ltc2984Sampler::Activity;

	switch(state) {
	case Activity::Measurement:
		out << "Measurement" << xpcc::endl;
		break;
	case Activity::FetchResult:
		out << "FetchResult" << xpcc::endl;
		break;
	case Activity::Finished:
		out << "Finished" << xpcc::endl;
		break;
	default:
		out << "BUG! Unknown state" << xpcc::endl;
	}

	return out;
}

}
}

