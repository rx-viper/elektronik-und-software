/* HeatprobeControl.hpp
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

#ifndef VIPER_ONBOARD_HEATPROBE_CONTROL_HPP
#define VIPER_ONBOARD_HEATPROBE_CONTROL_HPP

#include "../hardware_rev1.hpp"
#include <xpcc/driver/temperature/ltc2984.hpp>
#include <array>

namespace viper
{
namespace onboard
{

class HeatprobeControl
{
public:
	static constexpr int32_t OvertemperatureOffThreshold{60};
	static constexpr float OvertemperatureOnThreshold{59};

	using Hp1Timer	= Board::Heatprobes::Hp1Timer;
	using Hp2Timer	= Board::Heatprobes::Hp2Timer;
	using Hp3Timer	= Board::Heatprobes::Hp3Timer;

	static constexpr auto MaxPwm{Board::Heatprobes::Overflow};

	// It's over 9000!!!!1!11
	static constexpr int32_t InvalidTemperature{9001};

	// set from 0 .. 1
	static constexpr float Hp1Power{0.1f};
	static constexpr float Hp2Power{1.0f};
	static constexpr float Hp3Power{0.5f};

	static void initialize();

	/// Call periodically from main loop
	static void update();

	static void setOn();
	static void setOff();
	static bool isOn();

	static bool isOvertemperature();
	static bool isOvertemperature(size_t index);

	// set by DataAcquisition::update()
	static void setTemperature(size_t index, int32_t temp);
private:
	static bool on;
	static std::array<int32_t, 3> temperatures;
	static std::array<bool, 3> overtemperature;
};

}
}

#endif // VIPER_ONBOARD_LOGGER_HPP
