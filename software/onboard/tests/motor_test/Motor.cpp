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

extern xpcc::log::Logger logger;

using namespace xpcc::stm32;

namespace viper
{
namespace onboard
{

constexpr std::array<Motor::OutputSet, 7> Motor::outputSets;
constexpr std::array<uint_fast8_t, 8> Motor::hallMap;

Motor::ControllerMode Motor::controllerMode = Motor::ControllerMode::Disabled;
bool Motor::homed = false;

xpcc::ShortPeriodicTimer Motor::controllerTimer{Motor::ControllerPeriod};

int16_t Motor::currentPwm = 0;
int32_t Motor::currentVelocity = 0;
int32_t Motor::currentPosition = 0;
int32_t Motor::targetPosition = 0;

uint16_t Motor::lastEncoder = 0;

xpcc::Pid<float> Motor::speedController;
xpcc::SCurveController<float>::Parameter Motor::positionControllerParameters;
xpcc::SCurveController<float> Motor::positionController{positionControllerParameters};

xpcc::ShortTimeout Motor::homingLagTimeout;

void Motor::initialize()
{
	lastEncoder = Board::Encoders::Motor::getEncoderRaw();

	xpcc::Pid<float>::Parameter param(3.5f, 3.0f, 0.0f, 300, 511);
	speedController.setParameter(param);

	positionControllerParameters = xpcc::SCurveController<float>::Parameter(
				25,
				0.9f,
				0.3f,
				0.01f,
				5000000.0f,
				0,
				0);
	positionController.setParameter(positionControllerParameters);

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
			(targetPosition == currentPosition);
}

int32_t Motor::getPosition()
{
	/*if(!homed) {
		disable();
		return;
	}*/

	return currentPosition;
}

void Motor::update()
{
	if(Board::Motor::EndSwitch::read()) {
		if(controllerMode == ControllerMode::HomingActive) {
			setPwmValue(0, true);

			if(homingLagTimeout.isStopped()) {
				homingLagTimeout.restart(HomingLagTimeout);
			} else if(homingLagTimeout.isExpired()) {
				currentPosition = 0;
				currentVelocity = 0;
				homed = true;
				lastEncoder = Board::Encoders::Motor::getEncoderRaw();
				homingLagTimeout.stop();
				disable();
			}
		}
		/* else if(controllerMode == ControllerMode::Pwm && ((currentPwm > 0) == (HomingPwm > 0))) {
			setPwm(0);
			disable();
		}*/
	}

	if(homed) {
		updateEncoder();
	}

	if(controllerMode == ControllerMode::Position) {
		if(controllerTimer.execute()) {
			float distance = (targetPosition - currentPosition);
			positionController.update(distance, currentVelocity);
			float targetVelocity = positionController.getValue();
			speedController.update(targetVelocity - currentVelocity, false /*isCurrentOverLimit()*/);
			currentPwm = speedController.getValue();
			setPwmValue(currentPwm, true);
		}
	}
}

void
Motor::doCommutation()
{
	if(controllerMode == ControllerMode::Disabled) {
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


XPCC_ISR(EXTI9_5)
{
	Board::Motor::HallU::acknowledgeExternalInterruptFlag();
	Board::Motor::HallV::acknowledgeExternalInterruptFlag();
	Board::Motor::HallW::acknowledgeExternalInterruptFlag();
	viper::onboard::Motor::doCommutation();
}

