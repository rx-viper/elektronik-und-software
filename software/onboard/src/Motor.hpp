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

#include <xpcc/processing/timer.hpp>

namespace viper
{
namespace onboard
{

class Motor
{
public:
	using MotorTimer = Board::Motor::MotorTimer;

	static constexpr uint16_t HomingPwm = -400;

	// Wait 400ms before reading encoder home location after end switch has been reached
	static constexpr uint16_t HomingLagTimeout = 400;
	static constexpr uint16_t ControllerPeriod = 5; // ms

	static void initialize();

	static void disable();

	static void home();
	static bool isHomed();

	static void setPwm(int16_t pwm);

	static void setPosition(int32_t currentPosition);
	static bool isPositionReached();
	static int32_t getPosition();

	/// Call periodically from main loop
	static void update();

	static void doCommutation();

	enum class ControllerMode
	{
		Disabled,
		Pwm,
		HomingActive,
		Position
	};

	static ControllerMode getMode();

private:
	enum class PwmMode
	{
		Off,
		Normal,
		Inverted
	};

	static void setPwmValue(int16_t pwm, bool keepMode = false);
	static void setPwmMode(uint32_t channel, PwmMode mode);
	static void updateModeEvent();

	static void updateEncoder();

	using OutputSet = std::array<PwmMode, 3>;

	static volatile ControllerMode controllerMode;
	static bool homed;
	static xpcc::PeriodicTimer controllerTimer;
	static volatile int16_t currentPwm;
	static int32_t currentVelocity;
	static int32_t currentPosition;
	static int32_t targetPosition;

	static uint16_t lastEncoder;

	static xpcc::Pid<float> positionController;
	static xpcc::Timeout homingLagTimeout;


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
