/* Ltc2984Thread.cpp
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

#include "Ltc2984Thread.hpp"
#include "Activity.hpp"

#include <xpcc/debug/logger.hpp>
#include <algorithm>

namespace viper
{
namespace onboard
{

void Ltc2984ThreadBase::startMeasurement()
{
	if(request == Request::None) {
		dataValid = false;
		abortMeasurement = false;
		request = Request::Measurement;
		// set data to invalid value
		data.fill(Data(0xFFFFFFFF));
	}
}

void Ltc2984ThreadBase::fetchResult()
{
	if(request == Request::None) {
		dataValid = false;
		request = Request::FetchResult;
	}
}

bool Ltc2984ThreadBase::isInitialized()
{
	return request != Request::Initialize;
}

bool Ltc2984ThreadBase::isFinished() const
{
	return request == Request::None;
}

bool Ltc2984ThreadBase::isDataValid() const
{
	return dataValid;
}

void Ltc2984ThreadBase::reset()
{
	abortMeasurement = true;
}

xpcc::ResumableResult<void>
Ltc2984ThreadBase::update()
{
	PT_BEGIN();

	while(true) {
		PT_CALL(run());
	}

	PT_END();
}

xpcc::ResumableResult<void>
Ltc2984ThreadBase::run()
{
	ACTIVITY_GROUP_BEGIN()
	{
		DECLARE_ACTIVITY(Activity::Initialize)
		{
			RF_CALL(initialize());
			request = Request::None;
			CALL_ACTIVITY(Activity::Waiting);
		}

		DECLARE_ACTIVITY(Activity::Waiting)
		{
			RF_WAIT_UNTIL(request != Request::None);
			CALL_ACTIVITY(Activity::ProcessRequest);
		}

		DECLARE_ACTIVITY(Activity::ProcessRequest)
		{
			dataValid = false;
			if(request == Request::Measurement) {
				RF_CALL(nextMeasurementCommand());
			} else if(request == Request::FetchResult) {
				dataValid = RF_CALL(readBusy()) && !abortMeasurement;
				if(dataValid) {
					RF_CALL(readData(data));
				}
				abortMeasurement = false;
			}
			request = Request::None;

			CALL_ACTIVITY(Activity::Waiting);
		}
	}
	ACTIVITY_GROUP_END();
}

const Ltc2984ThreadBase::Data&
Ltc2984ThreadBase::getData(size_t channelIndex) const
{
	return data[channelIndex];
}

xpcc::IOStream& operator<<(xpcc::IOStream& out, Ltc2984ThreadBase::Activity state)
{
	using Activity = Ltc2984ThreadBase::Activity;

	switch(state) {
	case Activity::Initialize:
		out << "Initialize" << xpcc::endl;
		break;
	case Activity::ProcessRequest:
		out << "ProcessRequest" << xpcc::endl;
		break;
	case Activity::Waiting:
		out << "Waiting" << xpcc::endl;
		break;
	default:
		out << "BUG! Unknown state" << xpcc::endl;
	}

	return out;
}

}
}

