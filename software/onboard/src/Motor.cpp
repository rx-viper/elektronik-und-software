/* Motor.cpp
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

#include "Motor.hpp"

#include <xpcc/debug/logger.hpp>

extern xpcc::log::Logger logger;

using namespace xpcc::stm32;

namespace viper
{
namespace onboard
{

constexpr std::array<Motor::OutputSet, 7> Motor::outputSets;
constexpr std::array<uint_fast8_t, 8> Motor::hallMap;

void Motor::setPwm(int16_t pwm)
{
	uint16_t compareValue = abs(pwm);
	const auto MaxPwm = Board::Motor::MaxPwm;
	const uint16_t HalfOverflow = (MaxPwm + 1) / 2;

	// Limit maximum pwm value to allow the bootstrap caps to recharge
	if (compareValue > (MaxPwm * 0.95f)) {
		compareValue = MaxPwm * 0.95f;
	}

	compareValue /= 2;

	if(pwm >= 0) {
		compareValue = HalfOverflow + compareValue;
	} else {
		compareValue = HalfOverflow - compareValue;
	}

	Board::Motor::setCompareValue(compareValue);

	doCommutation();
}

void
Motor::doCommutation()
{
	uint8_t hallInput = (Board::Motor::HallU::read() ? 0b010 : 0);
	hallInput |= (Board::Motor::HallV::read() ? 0b001 : 0);
	hallInput |= (Board::Motor::HallW::read() ? 0b100 : 0);

	const auto& output = outputSets[hallMap[hallInput]];

	setPwmMode(1, output[0]);
	setPwmMode(2, output[1]);
	setPwmMode(3, output[2]);

	Board::Motor::ResetU::setOutput(output[0] == PwmMode::Off);
	Board::Motor::ResetV::setOutput(output[1] == PwmMode::Off);
	Board::Motor::ResetW::setOutput(output[2] == PwmMode::Off);

	updateModeEvent();
}

void xpcc_always_inline
Motor::setPwmMode(uint32_t channel, PwmMode mode)
{
	auto ocm = MotorTimer::OutputCompareMode::ForceLow;

	if(mode == PwmMode::Normal) {
		ocm = MotorTimer::OutputCompareMode::Pwm;
	} else if(mode == PwmMode::Inverted) {
		ocm = MotorTimer::OutputCompareMode::Pwm2;
	}

	MotorTimer::configureOutputChannel(channel,
									   ocm,
									   MotorTimer::PinState::Enable,
									   MotorTimer::OutputComparePolarity::ActiveHigh,
									   MotorTimer::PinState::Disable); // disable complementary output
}

void xpcc_always_inline
Motor::updateModeEvent()
{
	MotorTimer::generateEvent(MotorTimer::Event::CaptureCompareControlUpdate);
}

}
}


XPCC_ISR(EXTI9_5)
{
	Board::Motor::HallU::acknowledgeExternalInterruptFlag();
	Board::Motor::HallV::acknowledgeExternalInterruptFlag();
	Board::Motor::HallW::acknowledgeExternalInterruptFlag();
	viper::onboard::Motor::doCommutation();
}

