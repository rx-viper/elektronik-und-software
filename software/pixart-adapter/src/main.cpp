/* main.cpp
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

#include "../hardware.hpp"
#include "Sensor.hpp"
#include <modm/debug/logger/logger.hpp>
#include <atomic>

namespace {
	constexpr std::array<uint8_t, 4> outputStates = {0b00, 0b10, 0b11, 0b01};
	std::atomic<int32_t> increments[3];
	uint8_t state[3] = {};

	SensorThread<Board::Sensors::Sensor0> sensor0;
	SensorThread<Board::Sensors::Sensor1> sensor1;
	SensorThread<Board::Sensors::Sensor2> sensor2;

	struct SensorOutput0 {
		static constexpr auto id = 0;
		using Port = Board::EncoderOutputs::Port0;
	};

	struct SensorOutput1 {
		static constexpr auto id = 1;
		using Port = Board::EncoderOutputs::Port1;
	};

	struct SensorOutput2 {
		static constexpr auto id = 2;
		using Port = Board::EncoderOutputs::Port2;
	};

	template<typename Sensor>
	void processSensor(Sensor& sensor, int id)
	{
		if(sensor.hasMoved()) {
			const auto position = sensor.readPosition();
			MODM_LOG_INFO << "Position " << id << ": " << position.x << ", " << position.y << modm::endl;	
			increments[id] += position.y;
		}

		sensor.update();
	}

}

int main()
{
	Board::initializeMcu();
	Board::initializeAllPeripherals();

	increments[0] = 0;
	increments[1] = 0;
	increments[2] = 0;

	MODM_LOG_INFO << "TEST" << modm::endl;

	while(true) {
		processSensor(sensor0, 0);
		processSensor(sensor1, 1);
		processSensor(sensor2, 2);
	}
	
}

template<typename Out>
modm_always_inline void
doEncoderOutput()
{
	int32_t i = increments[Out::id].load();
	if(i > 0) {
		state[Out::id] = (state[Out::id] + 1) & 0b11;
		--increments[Out::id];
		Out::Port::write(outputStates[state[Out::id]]);
	} else if (i < 0) {
		state[Out::id] = (state[Out::id] - 1) & 0b11;
		++increments[Out::id];
		Out::Port::write(outputStates[state[Out::id]]);
	}
}

MODM_ISR(TIM11)
{
	doEncoderOutput<SensorOutput0>();
	doEncoderOutput<SensorOutput1>();
	doEncoderOutput<SensorOutput2>();
}

