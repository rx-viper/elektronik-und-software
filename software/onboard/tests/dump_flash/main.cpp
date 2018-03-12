/* main.hpp
 *
 * Copyright (C) 2018 Christopher Durand
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

#include <array>

#include "../../hardware_rev1.hpp"


xpcc::IODeviceWrapper<Board::Rxsm::TelemetryUart, xpcc::IOBuffer::BlockIfFull> loggerDevice;
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

using DumpUart = Board::Ui::DebugUart;

static constexpr auto BlockSize  = Flash::BlockSizeWrite;
static constexpr auto HeaderSize = sizeof(uint32_t);
static constexpr auto DataSize   = BlockSize - HeaderSize;
static constexpr auto FlashSize  = Board::Storage::FlashSize;

static constexpr std::initializer_list<uint8_t> InvalidHeader = {0xFF,0xFF,0xFF,0xFF};

static bool
readBlock(size_t flashIndex, Flash::bd_address_t address, std::array<uint8_t, BlockSize>& data)
{
	if(flashIndex == 0) {
		if(!RF_CALL_BLOCKING(flash.getBlockDeviceA().read(data.data(), address, BlockSize))) {
			logger << "Error: Unable to read flash 1!" << xpcc::endl;
			return false;
		}
		return true;
	} else if(flashIndex == 1) {
		if(!RF_CALL_BLOCKING(flash.getBlockDeviceB().read(data.data(), address, BlockSize))) {
			logger << "Error: Unable to read flash 2!" << xpcc::endl;
			return false;
		}
		return true;
	} else {
		return false;
	}
}

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

	logger << "Send 'D' to dump flash and check for consistency" << xpcc::endl;
	logger << "Send '1' to dump flash 1" << xpcc::endl;
	logger << "Send '2' to dump flash 2" << xpcc::endl;
	Board::Ui::LedRed::reset();
	Board::Ui::LedGreen::reset();
	Board::Ui::LedBlue::reset();

	std::array<uint8_t, BlockSize> buffer1 = {};
	std::array<uint8_t, BlockSize> buffer2 = {};

	uint8_t input = 0;
	while (1)
	{
		Board::Rxsm::TelemetryUart::read(input);
		Flash::bd_address_t address = 0;
		bool error = false;

		if(input == '1' || input == '2') {
			logger << "Dumping flash..." << xpcc::endl;
			Board::Ui::LedRed::set();
			Board::Ui::LedGreen::set();
			Board::Ui::LedBlue::set();

			const auto flashIndex = input - '1';

			while(address + BlockSize < FlashSize) {
				if(!readBlock(flashIndex, address, buffer1)) {
					error = true;
					break;
				}

				if(address != 0) {
					if(std::equal(buffer1.begin(), buffer1.begin() + HeaderSize, InvalidHeader.begin())) {
						logger << "Empty block found at address " << address << xpcc::endl;
						break;
					}
				}
				DumpUart::writeBlocking(buffer1.data() +  HeaderSize, DataSize);
				address += BlockSize;
			}

			Board::Ui::LedRed::reset();
			Board::Ui::LedGreen::reset();
			Board::Ui::LedBlue::reset();
			logger << "... finished." << xpcc::endl;
		} else if(input == 'D') {
			logger << "Dumping flash..." << xpcc::endl;
			Board::Ui::LedRed::set();
			Board::Ui::LedGreen::set();
			Board::Ui::LedBlue::set();

			while(address + BlockSize < FlashSize) {
				if(!readBlock(0, address, buffer1)) {
					error = true;
					break;
				}
				if(!readBlock(1, address, buffer2)) {
					error = true;
					break;
				}

				if(address != 0) {
					if(!std::equal(buffer1.begin(), buffer1.begin() + BlockSize, buffer2.begin())) {
						logger << "Error: Inconsistent data at block address " << address << ", aborting!" << xpcc::endl;
						error = true;
						break;
					}
				}
				
				if(address != 0) {
					if(std::equal(buffer1.begin(), buffer1.begin() + HeaderSize, InvalidHeader.begin())) {
						logger << "Empty block found at address " << address << xpcc::endl;
						error = true;
						break;
					}
				}
				DumpUart::writeBlocking(buffer1.data() +  HeaderSize, DataSize);
				address += BlockSize;
			}

			if(!error) {
				Board::Ui::LedRed::reset();
			}
			Board::Ui::LedGreen::reset();
			Board::Ui::LedBlue::reset();
			logger << "... finished." << xpcc::endl;
		}

		xpcc::delayMilliseconds(10);
	}

	return 0;
}
