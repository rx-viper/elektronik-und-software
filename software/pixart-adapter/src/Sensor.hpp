/* Sensor.hpp
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

#ifndef VIPER_PIXART_ADAPTER_SENSOR
#define VIPER_PIXART_ADAPTER_SENSOR

#include "../hardware.hpp"

#include <modm/processing/timer.hpp>
#include <modm/processing/protothread.hpp>
#include <modm/driver/motion/pat9125el.hpp>

template<typename SensorConfig>
class SensorThread : public modm::pt::Protothread
{
public:
	SensorThread();
	
	bool update();

	bool hasMoved() const;

	auto readPosition() -> modm::pat9125el::Motion2D;

private:
	bool moved = false;
	modm::pat9125el::Motion2D position = {};
	modm::Timeout timeout;

	using Spi = typename SensorConfig::Spi;
	using Cs = typename SensorConfig::Cs;
	using Motion = typename SensorConfig::Motion;

	modm::Pat9125el<modm::Pat9125elSpiTransport<Spi, Cs>, Motion> sensor;
};

#include "Sensor_impl.hpp"

#endif
