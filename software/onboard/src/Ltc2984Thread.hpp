/* Ltc2984Thread.hpp
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

#ifndef VIPER_ONBOARD_LTC2984_THREAD_HPP
#define VIPER_ONBOARD_LTC2984_THREAD_HPP

#include <xpcc/processing/timer/periodic_timer.hpp>
#include <xpcc/processing/protothread.hpp>
#include <xpcc/driver/temperature/ltc2984.hpp>

#include <array>
#include <memory>

#include "Ltc2984Config.hpp"
#include "../hardware_rev1.hpp"

namespace viper
{
namespace onboard
{

class Ltc2984ThreadBase : protected xpcc::NestedResumable<5>, protected xpcc::pt::Protothread
{
public:
	using Data = xpcc::ltc2984::Data;
	using Channel = xpcc::ltc2984::Channel;

	static constexpr size_t MaxChannels{6};

	enum class Activity
	{
		Initialize,
		Waiting,
		ProcessRequest
	};

	void startMeasurement();
	void fetchResult();

	bool isInitialized();
	bool isFinished() const;
	bool isDataValid() const;
	void reset();

	xpcc::ResumableResult<void>
	update();

	const Data& getData(size_t channelIndex) const;

	virtual size_t
	channelCount() = 0;

private:
	virtual xpcc::ResumableResult<void>
	initialize() = 0;

	virtual xpcc::ResumableResult<void>
	nextMeasurementCommand() = 0;

	virtual xpcc::ResumableResult<bool>
	readBusy() = 0;

	virtual xpcc::ResumableResult<void>
	readData(std::array<Data, MaxChannels>& data) = 0;

	xpcc::ResumableResult<void>
	run();

	enum class Request
	{
		None,
		Measurement,
		FetchResult,
		Initialize
	};

	std::array<Data, MaxChannels> data;

	Activity activity = Activity::Initialize;
	Request request = Request::Initialize;
	bool dataValid = false;
	bool abortMeasurement = false;
};

xpcc::IOStream& operator<<(xpcc::IOStream& out, Ltc2984ThreadBase::Activity state);

template<typename Sensor>
class Ltc2984Thread : public Ltc2984ThreadBase
{
public:
	using Config = typename viper::onboard::Ltc2984Config<Sensor>;
	static_assert (Config::ChannelCount <= MaxChannels, "Invalid channel count");

	Ltc2984Thread();

	size_t
	channelCount() override;

private:
	xpcc::ResumableResult<void>
	initialize() override;

	xpcc::ResumableResult<void>
	nextMeasurementCommand() override;

	xpcc::ResumableResult<bool>
	readBusy() override;

	xpcc::ResumableResult<void>
	readData(std::array<Data, MaxChannels>& data) override;

	static constexpr xpcc::ltc2984::Configuration::MuxChannel
	toMuxChannel(xpcc::ltc2984::Channel channel)
	{
		using MuxChannel = xpcc::ltc2984::Configuration::MuxChannel;
		const auto bitIndex = static_cast<uint32_t>(channel);
		return static_cast<MuxChannel>(1U << bitIndex);
	}

	xpcc::ShortPeriodicTimer initializeTimer;
	Sensor sensor;
	size_t i = 0;
};

}
}

#include "Ltc2984Thread_impl.hpp"

#endif // VIPER_ONBOARD_LTC2984_THREAD_HPP
