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

#include <cmath>
#include <xpcc/debug/logger.hpp>

using namespace xpcc::stm32;

namespace viper
{
namespace onboard
{

constexpr std::array<Motor::OutputSet, 7> Motor::outputSets;
constexpr std::array<uint_fast8_t, 8> Motor::hallMap;

volatile Motor::ControllerMode Motor::controllerMode = Motor::ControllerMode::Disabled;
bool Motor::homed = false;

xpcc::PeriodicTimer Motor::controllerTimer{Motor::ControllerPeriod};

volatile int16_t Motor::currentPwm = 0;
int32_t Motor::currentVelocity = 0;
int32_t Motor::currentPosition = 0;
int32_t Motor::targetPosition = 0;

uint16_t Motor::lastEncoder = 0;

xpcc::Pid<float> Motor::positionController;

xpcc::Timeout Motor::homingLagTimeout;

void Motor::initialize()
{
	lastEncoder = Board::Encoders::Motor::getEncoderRaw();

	xpcc::Pid<float>::Parameter param(6.0f, 0.42f, 0.0f, 666, 511);
	positionController.setParameter(param);

	Board::Motor::MotorTimer::start();
}

void Motor::disable()
{
	controllerMode = ControllerMode::Disabled;
	doCommutation();
}

void Motor::setPwm(int16_t pwm)
{
	setPwmValue(pwm, false);
}

void Motor::setPwmValue(int16_t pwm, bool keepMode)
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

	currentPwm = pwm;
	if(!keepMode) {
		controllerMode = ControllerMode::Pwm;
	}
	Board::Motor::setCompareValue(compareValue);

	doCommutation();
}

void
Motor::home()
{
	homingLagTimeout.stop();
	if(Board::Motor::EndSwitch::read()) {
		currentPosition = 0;
		currentVelocity = 0;
		homed = true;
		disable();
		lastEncoder = Board::Encoders::Motor::getEncoderRaw();
	} else {
		homed = false;
		setPwm(HomingPwm);
		controllerMode = ControllerMode::HomingActive;
	}
}

bool
Motor::isHomed()
{
	return homed;
}

void Motor::setPosition(int32_t position)
{
	/*if(!homed) {
		disable();
		return;
	}*/

	targetPosition = position;
	controllerMode = ControllerMode::Position;
}

bool Motor::isPositionReached()
{
	return (controllerMode == ControllerMode::Position) &&
			(abs(targetPosition - currentPosition) < 6000);
}

int32_t Motor::getPosition()
{
	/*if(!homed) {
		disable();
		return;
	}*/

	return currentPosition;
}

Motor::ControllerMode Motor::getMode()
{
	return controllerMode;
}

void Motor::update()
{
	if(controllerMode == ControllerMode::HomingActive) {
		if(homingLagTimeout.isExpired()) {
			currentPosition = 0;
			currentVelocity = 0;
			homed = true;
			lastEncoder = Board::Encoders::Motor::getEncoderRaw();
			homingLagTimeout.stop();
			disable();
		} else if(Board::Motor::EndSwitch::read()) {
			setPwmValue(0, true);

			if(homingLagTimeout.isStopped()) {
				homingLagTimeout.restart(HomingLagTimeout);
			}
		}
	}

	//if(homed) {
		updateEncoder();
	//}

	if(controllerMode == ControllerMode::Position) {
		if(controllerTimer.execute()) {
			float distance = (targetPosition - currentPosition);
			if(fabs(distance) < 5000) {
				distance = 0;
				positionController.resetErrorSum();
			}
			positionController.update(distance / 1000, false);
			currentPwm = positionController.getValue();
			setPwmValue(currentPwm, true);
		}
	}

	doCommutation();
}

void xpcc_always_inline
Motor::doCommutation()
{
	if(controllerMode == ControllerMode::Disabled || currentPwm == 0) {
		setPwmMode(1, PwmMode::Off);
		setPwmMode(2, PwmMode::Off);
		setPwmMode(3, PwmMode::Off);
		updateModeEvent();

		Board::Motor::ResetU::setOutput(true);
		Board::Motor::ResetV::setOutput(true);
		Board::Motor::ResetW::setOutput(true);
		return;
	}

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

void xpcc_always_inline
Motor::updateEncoder()
{
	const int32_t newValue = Board::Encoders::Motor::getEncoderRaw();
	int32_t diff = (static_cast<int32_t>(newValue) - static_cast<int32_t>(lastEncoder));

	if(diff < -32767) {
		diff += 65536;
	} else if(diff > 32767) {
		diff -= 65536;
	}

	currentVelocity = diff;
	lastEncoder = newValue;
	currentPosition += diff;
}

}
}

