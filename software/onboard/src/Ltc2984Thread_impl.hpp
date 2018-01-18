/* Ltc2984Thread_impl.hpp
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
	#error "Do not use this file directly, include Ltc2984Thread.hpp instead!"
#endif

#include "Ltc2984Thread.hpp"

namespace viper
{
namespace onboard
{

template<typename Sensor>
Ltc2984Thread<Sensor>::Ltc2984Thread() : initializeTimer{0}
{
}

template<typename Sensor>
xpcc::ResumableResult<void>
Ltc2984Thread<Sensor>::initialize()
{
	RF_BEGIN();

	initializeTimer.restart(20);

	while(!RF_CALL(sensor.ping())) {
		RF_WAIT_UNTIL(initializeTimer.execute());
	}

	initializeTimer.stop();

	RF_CALL(sensor.configureChannel(Config::RsenseChannel,
									xpcc::ltc2984::Configuration::rsense(Config::RsenseResistance)));

	for(i = 0; i < Config::channels.size(); ++i) {
		RF_CALL(sensor.configureChannel(Config::channels[i], Config::RtdConfig));
		sensor.enableChannel(toMuxChannel(Config::channels[i]));
	}

	RF_END_RETURN_CALL(sensor.setChannels());
}

template<typename Sensor>
xpcc::ResumableResult<void>
Ltc2984Thread<Sensor>::nextMeasurementCommand()
{
	RF_BEGIN();
	RF_END_RETURN_CALL(sensor.initiateMeasurements());
}


template<typename Sensor>
xpcc::ResumableResult<bool>
Ltc2984Thread<Sensor>::readBusy()
{
	RF_BEGIN();
	RF_END_RETURN_CALL(sensor.isBusy());
}

template<typename Sensor>
xpcc::ResumableResult<void>
Ltc2984Thread<Sensor>::readData(std::array<Ltc2984ThreadBase::Data, Ltc2984ThreadBase::MaxChannels>& data)
{
	RF_BEGIN();

	for(i = 0; i < Config::channels.size(); ++i) {
		RF_CALL(sensor.readChannel(Config::channels[i], data[i]));
	}

	RF_END_RETURN();
}

template<typename Sensor>
size_t Ltc2984Thread<Sensor>::channelCount()
{
	return Config::ChannelCount;
}

}
}

