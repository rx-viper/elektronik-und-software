/* Ltc2984Config.cpp
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

#include "Ltc2984Config.hpp"

namespace viper
{
namespace onboard
{

constexpr std::array<xpcc::ltc2984::Channel, Ltc2984Config<Ltc2984Sensor1>::ChannelCount>
Ltc2984Config<Ltc2984Sensor1>::channels;

constexpr std::array<xpcc::ltc2984::Channel, Ltc2984Config<Ltc2984Sensor2>::ChannelCount>
Ltc2984Config<Ltc2984Sensor2>::channels;

constexpr std::array<xpcc::ltc2984::Channel, Ltc2984Config<Ltc2984Sensor3>::ChannelCount>
Ltc2984Config<Ltc2984Sensor3>::channels;

constexpr std::array<xpcc::ltc2984::Channel, Ltc2984Config<Ltc2984Sensor4>::ChannelCount>
Ltc2984Config<Ltc2984Sensor4>::channels;

constexpr std::array<xpcc::ltc2984::Channel, Ltc2984Config<Ltc2984Sensor5>::ChannelCount>
Ltc2984Config<Ltc2984Sensor5>::channels;

constexpr std::array<xpcc::ltc2984::Channel, Ltc2984Config<Ltc2984Sensor6>::ChannelCount>
Ltc2984Config<Ltc2984Sensor6>::channels;

}
}
