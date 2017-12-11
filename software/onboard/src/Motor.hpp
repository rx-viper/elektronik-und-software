/* Motor.hpp
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

#ifndef VIPER_ONBOARD_MOTOR_HPP
#define VIPER_ONBOARD_MOTOR_HPP

#include "../hardware_rev1.hpp"
#include <array>

namespace viper
{
namespace onboard
{

class Motor
{
public:
	using MotorTimer = Board::Motor::MotorTimer;

	static void setPwm(int16_t pwm);

	static void doCommutation();

private:
	enum class PwmMode
	{
		Off,
		Normal,
		Inverted
	};

	static void setPwmMode(uint32_t channel, PwmMode mode);
	static void updateModeEvent();

	using OutputSet = std::array<PwmMode, 3>;

	static constexpr std::array<OutputSet, 7> outputSets = {{
		{PwmMode::Off,		PwmMode::Off,		PwmMode::Off},
		{PwmMode::Normal,	PwmMode::Inverted,	PwmMode::Off},
		{PwmMode::Normal,	PwmMode::Off,		PwmMode::Inverted},
		{PwmMode::Off,		PwmMode::Normal,	PwmMode::Inverted},
		{PwmMode::Inverted,	PwmMode::Normal,	PwmMode::Off},
		{PwmMode::Inverted,	PwmMode::Off,		PwmMode::Normal},
		{PwmMode::Off,		PwmMode::Inverted,	PwmMode::Normal}
	}};

	static constexpr std::array<uint_fast8_t, 8> hallMap = {
		0, // 0b000, invalid
		2, // 0b001,
		4, // 0b010,
		3, // 0b011,
		6, // 0b100,
		1, // 0b101,
		5, // 0b110,
		0, // 0b111, invalid
	};
};

}
}

#endif // VIPER_ONBOARD_MOTOR_HPP
