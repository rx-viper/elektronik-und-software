/* Sensor_impl.hpp
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

#include <modm/debug/logger/logger.hpp>

template<typename SensorConfig>
SensorThread<SensorConfig>::SensorThread() = default;

template<typename SensorConfig>
bool SensorThread<SensorConfig>::update()
{
	PT_BEGIN();

	MODM_LOG_INFO << "Ping device" << modm::endl;
	// ping the device until it responds
	while(true)
	{
		if (RF_CALL_BLOCKING(sensor.ping())) {
			break;
		}
		// otherwise, try again in 100ms
		this->timeout.restart(100);
		PT_WAIT_UNTIL(this->timeout.isExpired());
	}
	MODM_LOG_INFO << "Ping successful" << modm::endl;

	RF_CALL_BLOCKING(sensor.configure(0x64, 0x64));

	while (true)
	{
		RF_CALL_BLOCKING(sensor.readData());
		if(sensor.hasMoved()) {
			moved = true;
		}
		PT_YIELD();
	}

	PT_END();
}

template<typename SensorConfig>
bool SensorThread<SensorConfig>::hasMoved() const
{
	return moved;
}

template<typename SensorConfig>
auto SensorThread<SensorConfig>::readMovement() -> modm::pat9125el::Motion2D
{
	moved = false;
	const auto returnValue = sensor.getData();
	sensor.resetMoved();
	return returnValue;
}
