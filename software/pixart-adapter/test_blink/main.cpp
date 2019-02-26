/* main.hpp
 *
 * Copyright (C) 2019 Raphael Lehmann <raphael@rleh.de>
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

#include <modm/platform.hpp>
#include <modm/debug/logger.hpp>

#include "../hardware.hpp"

#include <modm/driver/encoder/encoder_slave.hpp>

// Set the log level
#undef  MODM_LOG_LEVEL
#define MODM_LOG_LEVEL modm::log::DEBUG

// Create an IODeviceWrapper around the Uart Peripheral we want to use
modm::IODeviceWrapper< Usart1, modm::IOBuffer::BlockIfFull > loggerDevice;

// Set all four logger streams to use the UART
modm::log::Logger modm::log::debug(loggerDevice);
modm::log::Logger modm::log::info(loggerDevice);
modm::log::Logger modm::log::warning(loggerDevice);
modm::log::Logger modm::log::error(loggerDevice);

int
main()
{
	Board::initializeMcu();
	Board::initializeAllPeripherals();

	modm::EncoderSlave<modm::platform::GpioA1, modm::platform::GpioA2> encoderSlave;

	encoderSlave.setPosition(42);

	while (1)
	{
	    // Change MODM_LOG_LEVEL above to enable or disable these messages
	    MODM_LOG_DEBUG   << "debug"   << modm::endl;
	    MODM_LOG_INFO    << "info"    << modm::endl;
	    MODM_LOG_WARNING << "warning" << modm::endl;
	    MODM_LOG_ERROR   << "error"   << modm::endl;
	    modm::delayMilliseconds(500);
	    encoderSlave.update();
	}

	return 0;
}
