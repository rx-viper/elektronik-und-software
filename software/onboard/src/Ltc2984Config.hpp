/* Ltc2984Config.hpp
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

#ifndef VIPER_ONBOARD_LTC2984_CONFIG_HPP
#define VIPER_ONBOARD_LTC2984_CONFIG_HPP

#include <xpcc/driver/temperature/ltc2984.hpp>

#include <array>
#include "../hardware_rev1.hpp"

namespace viper
{
namespace onboard
{
	using Ltc2984Sensor1 = xpcc::Ltc2984<Board::TemperaturePt100::Chips123::Spi, Board::TemperaturePt100::Chips123::Cs1>;
	using Ltc2984Sensor2 = xpcc::Ltc2984<Board::TemperaturePt100::Chips123::Spi, Board::TemperaturePt100::Chips123::Cs2>;
	using Ltc2984Sensor3 = xpcc::Ltc2984<Board::TemperaturePt100::Chips123::Spi, Board::TemperaturePt100::Chips123::Cs3>;
	using Ltc2984Sensor4 = xpcc::Ltc2984<Board::TemperaturePt100::Chips456::Spi, Board::TemperaturePt100::Chips456::Cs4>;
	using Ltc2984Sensor5 = xpcc::Ltc2984<Board::TemperaturePt100::Chips456::Spi, Board::TemperaturePt100::Chips456::Cs5>;
	using Ltc2984Sensor6 = xpcc::Ltc2984<Board::TemperaturePt100::Chips456::Spi, Board::TemperaturePt100::Chips456::Cs6>;

	constexpr std::array<uint16_t, 3> HpTempSensorIndex = {{5, 5, 5}};
	constexpr std::array<uint16_t, 3> HpTempChannelIndex = {{1, 0, 2}};

	template<typename Sensor>
	struct Ltc2984Config;

	template<>
	struct Ltc2984Config<Ltc2984Sensor1>
	{
		static constexpr size_t ChannelCount{6};

		static constexpr std::array<xpcc::ltc2984::Channel, ChannelCount> channels = {{
			xpcc::ltc2984::Channel::Ch4,
			xpcc::ltc2984::Channel::Ch7,
			xpcc::ltc2984::Channel::Ch10,
			xpcc::ltc2984::Channel::Ch13,
			xpcc::ltc2984::Channel::Ch16,
			xpcc::ltc2984::Channel::Ch19
		}};

		static constexpr auto RtdConfig = xpcc::ltc2984::Configuration::rtd(
				xpcc::ltc2984::Configuration::SensorType::Pt100,
				xpcc::ltc2984::Configuration::Rtd::RsenseChannel::Ch2_Ch1,
				xpcc::ltc2984::Configuration::Rtd::Wires::Wire4,
				xpcc::ltc2984::Configuration::Rtd::ExcitationMode::Rotation_Sharing,
				xpcc::ltc2984::Configuration::Rtd::ExcitationCurrent::Current_500uA,
				xpcc::ltc2984::Configuration::Rtd::RtdCurve::European
				);

		static constexpr auto RsenseChannel = xpcc::ltc2984::Channel::Ch2;
		static constexpr auto RsenseResistance = xpcc::ltc2984::Configuration::Rsense::Resistance_t(1000*1024);
	};

	template<>
	struct Ltc2984Config<Ltc2984Sensor2>
	{
		static constexpr size_t ChannelCount{6};

		static constexpr std::array<xpcc::ltc2984::Channel, ChannelCount> channels = {{
			xpcc::ltc2984::Channel::Ch4,
			xpcc::ltc2984::Channel::Ch7,
			xpcc::ltc2984::Channel::Ch10,
			xpcc::ltc2984::Channel::Ch13,
			xpcc::ltc2984::Channel::Ch16,
			xpcc::ltc2984::Channel::Ch19
		}};

		static constexpr auto RtdConfig = xpcc::ltc2984::Configuration::rtd(
				xpcc::ltc2984::Configuration::SensorType::Pt100,
				xpcc::ltc2984::Configuration::Rtd::RsenseChannel::Ch2_Ch1,
				xpcc::ltc2984::Configuration::Rtd::Wires::Wire4,
				xpcc::ltc2984::Configuration::Rtd::ExcitationMode::Rotation_Sharing,
				xpcc::ltc2984::Configuration::Rtd::ExcitationCurrent::Current_500uA,
				xpcc::ltc2984::Configuration::Rtd::RtdCurve::European
				);

		static constexpr auto RsenseChannel = xpcc::ltc2984::Channel::Ch2;
		static constexpr auto RsenseResistance = xpcc::ltc2984::Configuration::Rsense::Resistance_t(1000*1024);
	};

	template<>
	struct Ltc2984Config<Ltc2984Sensor3>
	{
		static constexpr size_t ChannelCount{6};

		static constexpr std::array<xpcc::ltc2984::Channel, ChannelCount> channels = {{
			xpcc::ltc2984::Channel::Ch4,
			xpcc::ltc2984::Channel::Ch7,
			xpcc::ltc2984::Channel::Ch10,
			xpcc::ltc2984::Channel::Ch13,
			xpcc::ltc2984::Channel::Ch16,
			xpcc::ltc2984::Channel::Ch19
		}};

		static constexpr auto RtdConfig = xpcc::ltc2984::Configuration::rtd(
				xpcc::ltc2984::Configuration::SensorType::Pt100,
				xpcc::ltc2984::Configuration::Rtd::RsenseChannel::Ch2_Ch1,
				xpcc::ltc2984::Configuration::Rtd::Wires::Wire4,
				xpcc::ltc2984::Configuration::Rtd::ExcitationMode::Rotation_Sharing,
				xpcc::ltc2984::Configuration::Rtd::ExcitationCurrent::Current_500uA,
				xpcc::ltc2984::Configuration::Rtd::RtdCurve::European
				);

		static constexpr auto RsenseChannel = xpcc::ltc2984::Channel::Ch2;
		static constexpr auto RsenseResistance = xpcc::ltc2984::Configuration::Rsense::Resistance_t(1000*1024);
	};

	template<>
	struct Ltc2984Config<Ltc2984Sensor4>
	{
		static constexpr size_t ChannelCount{4};

		static constexpr std::array<xpcc::ltc2984::Channel, ChannelCount> channels = {{
			//xpcc::ltc2984::Channel::Ch4,
			xpcc::ltc2984::Channel::Ch7,
			xpcc::ltc2984::Channel::Ch10,
			xpcc::ltc2984::Channel::Ch13,
			xpcc::ltc2984::Channel::Ch16
			//xpcc::ltc2984::Channel::Ch19
		}};

		static constexpr auto RtdConfig = xpcc::ltc2984::Configuration::rtd(
				xpcc::ltc2984::Configuration::SensorType::Pt100,
				xpcc::ltc2984::Configuration::Rtd::RsenseChannel::Ch2_Ch1,
				xpcc::ltc2984::Configuration::Rtd::Wires::Wire4,
				xpcc::ltc2984::Configuration::Rtd::ExcitationMode::Rotation_Sharing,
				xpcc::ltc2984::Configuration::Rtd::ExcitationCurrent::Current_500uA,
				xpcc::ltc2984::Configuration::Rtd::RtdCurve::European
				);

		static constexpr auto RsenseChannel = xpcc::ltc2984::Channel::Ch2;
		static constexpr auto RsenseResistance = xpcc::ltc2984::Configuration::Rsense::Resistance_t(1000*1024);
	};

	template<>
	struct Ltc2984Config<Ltc2984Sensor5>
	{
		static constexpr size_t ChannelCount{5};

		static constexpr std::array<xpcc::ltc2984::Channel, ChannelCount> channels = {{
			//xpcc::ltc2984::Channel::Ch4,
			xpcc::ltc2984::Channel::Ch7,
			xpcc::ltc2984::Channel::Ch10,
			xpcc::ltc2984::Channel::Ch13,
			xpcc::ltc2984::Channel::Ch16,
			xpcc::ltc2984::Channel::Ch19
		}};

		static constexpr auto RtdConfig = xpcc::ltc2984::Configuration::rtd(
				xpcc::ltc2984::Configuration::SensorType::Pt100,
				xpcc::ltc2984::Configuration::Rtd::RsenseChannel::Ch2_Ch1,
				xpcc::ltc2984::Configuration::Rtd::Wires::Wire4,
				xpcc::ltc2984::Configuration::Rtd::ExcitationMode::Rotation_Sharing,
				xpcc::ltc2984::Configuration::Rtd::ExcitationCurrent::Current_500uA,
				xpcc::ltc2984::Configuration::Rtd::RtdCurve::European
				);

		static constexpr auto RsenseChannel = xpcc::ltc2984::Channel::Ch2;
		static constexpr auto RsenseResistance = xpcc::ltc2984::Configuration::Rsense::Resistance_t(1000*1024);
	};

	template<>
	struct Ltc2984Config<Ltc2984Sensor6>
	{
		static constexpr size_t ChannelCount{3};

		static constexpr std::array<xpcc::ltc2984::Channel, ChannelCount> channels = {{
			/*xpcc::ltc2984::Channel::Ch4,
			xpcc::ltc2984::Channel::Ch7,
			xpcc::ltc2984::Channel::Ch10,*/
			xpcc::ltc2984::Channel::Ch13,
			xpcc::ltc2984::Channel::Ch16,
			xpcc::ltc2984::Channel::Ch19
		}};

		static constexpr auto RtdConfig = xpcc::ltc2984::Configuration::rtd(
				xpcc::ltc2984::Configuration::SensorType::Pt100,
				xpcc::ltc2984::Configuration::Rtd::RsenseChannel::Ch2_Ch1,
				xpcc::ltc2984::Configuration::Rtd::Wires::Wire4,
				xpcc::ltc2984::Configuration::Rtd::ExcitationMode::Rotation_Sharing,
				xpcc::ltc2984::Configuration::Rtd::ExcitationCurrent::Current_500uA,
				xpcc::ltc2984::Configuration::Rtd::RtdCurve::European
				);

		static constexpr auto RsenseChannel = xpcc::ltc2984::Channel::Ch2;
		static constexpr auto RsenseResistance = xpcc::ltc2984::Configuration::Rsense::Resistance_t(1000*1024);
	};
}
}

#endif // VIPER_ONBOARD_LTC2984_SAMPLER_HPP
