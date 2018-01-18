/* main.hpp
 *
 * Copyright (C) 2018 Raphael Lehmann <raphael@rleh.de>
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

#include <xpcc/architecture/platform.hpp>
#include <xpcc/driver/storage/block_device_spiflash.hpp>
#include <xpcc/driver/storage/block_device_mirror.hpp>

#include <xpcc/debug/logger.hpp>

#include "../../hardware_rev1.hpp"


xpcc::IODeviceWrapper<Board::Ui::DebugUart, xpcc::IOBuffer::BlockIfFull> loggerDevice;
xpcc::log::Logger logger{loggerDevice};

using Flash = xpcc::BdMirror<
	xpcc::BdSpiFlash<
		Board::Storage::Flash1Spi::Spi,
		Board::Storage::Flash1Spi::Cs,
		Board::Storage::FlashSize
	>,
	xpcc::BdSpiFlash<
		Board::Storage::Flash2Spi::Spi,
		Board::Storage::Flash2Spi::Cs,
		Board::Storage::FlashSize
	>
>;

Flash flash;

int
main()
{
	Board::initializeMcu();
	Board::initializeAllPeripherals();

	if(!RF_CALL_BLOCKING(flash.initialize())) {
		logger << "Error: Unable to initialize flash!" << xpcc::endl;
	}

	logger << "Flash1 Info:" << xpcc::endl;
	auto id1 = RF_CALL_BLOCKING(flash.getBlockDeviceA().readId());
	logger << "deviceId=" << id1.deviceId << " manufacturerId=" << id1.manufacturerId;
	logger << " deviceType=" << id1.deviceType << xpcc::endl;

	logger << "Flash2 Info:" << xpcc::endl;
	auto id2 = RF_CALL_BLOCKING(flash.getBlockDeviceB().readId());
	logger << "deviceId=" << id2.deviceId << " manufacturerId=" << id2.manufacturerId;
	logger << " deviceType=" << id2.deviceType << xpcc::endl;

	logger << "Send 'E' to erase flash" << xpcc::endl;
	Board::Ui::LedRed::reset();
	Board::Ui::LedGreen::reset();
	Board::Ui::LedBlue::reset();

	uint8_t input = 0;
	while (1)
	{
		Board::Ui::DebugUart::read(input);
		if(input == 'E') {
			logger << "Erasing flash..." << xpcc::endl;
			Board::Ui::LedRed::set();
			Board::Ui::LedGreen::set();
			Board::Ui::LedBlue::set();
			if(!RF_CALL_BLOCKING(flash.erase(0, Board::Storage::FlashSize))) {
				logger << "Error: Unable to erase flash!" << xpcc::endl;
				break;
			}
			Board::Ui::LedRed::reset();
			Board::Ui::LedGreen::reset();
			Board::Ui::LedBlue::reset();
			logger << "... finished." << xpcc::endl;
		}
		xpcc::delayMilliseconds(10);
	}

	return 0;
}
