/* FlashWriter_impl.hpp
 *
 * Copyright (C) 2018 Raphael Lehmann
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

#ifndef VIPER_ONBOARD_FLASHWRITER_HPP
	#error "Do not use this file directly, include Ds1731Sensor.hpp instead!"
#endif

#include "FlashWriter.hpp"

#include "Packets.hpp"

#include <xpcc/architecture/platform.hpp>
#include <xpcc/debug/logger.hpp>

namespace viper
{
namespace onboard
{

template<typename BlockDevice>
FlashWriter<BlockDevice>::FlashWriter()
{
	static_assert(BlockSize == 256, "Only block devices with BlockSizeWrite of 256 are supported by now.");
	static_assert(BufferSize == 252, "Only block devices with BlockSizeWrite of 256 are supported by now.");
	// max packet size: 256+1 byte incl. head, framing, ...
}

template<typename BlockDevice>
xpcc::ResumableResult<uint32_t>
FlashWriter<BlockDevice>::initialize()
{
	RF_BEGIN();

	std::memset(bufferA, 0x00000000, sizeof(bufferA));
	std::memset(bufferB, 0x00000000, sizeof(bufferB));

	bufferActive = bufferA;
	bufferShadow = bufferB;

	if(!RF_CALL(bd.initialize())) {
		// This should not happen ...
		XPCC_LOG_ERROR << "Error: unable to initialize block devices from FlashWriter" << xpcc::endl;
		RF_RETURN(0);
	}

	experimentId = 0;
	flashAddress = 0;
	do {
		lastExperimentId = experimentId;
		if(!RF_CALL(bd.read(reinterpret_cast<uint8_t*>(&experimentId), flashAddress, 4))) {
			// This should not happen ...
			XPCC_LOG_ERROR << "Error: unable to read from flash" << xpcc::endl;
			RF_RETURN(0);
		}
		flashAddress += BlockSize;
	} while(((experimentId != 0xFFFFFFFF) || (flashAddress == BlockSize)) && (flashAddress < BlockDevice::DeviceSize));
	if(lastExperimentId == 0xFFFFFFFF) {
		experimentId = 0xFF;
	}
	else {
		experimentId = lastExperimentId + 1;
	}

	flashAddress -= BlockSize;

	bufferA[3] = (experimentId >> 24) & 0xFF;
	bufferA[2] = (experimentId >> 16) & 0xFF;
	bufferA[1] = (experimentId >> 8) & 0xFF;
	bufferA[0] = (experimentId) & 0xFF;
	bufferB[3] = (experimentId >> 24) & 0xFF;
	bufferB[2] = (experimentId >> 16) & 0xFF;
	bufferB[1] = (experimentId >> 8) & 0xFF;
	bufferB[0] = (experimentId) & 0xFF;

	indexWrite = 0;

	RF_END_RETURN(experimentId);
}

template<typename BlockDevice>
xpcc::ResumableResult<bool>
FlashWriter<BlockDevice>::readPage(uint8_t* buffer, xpcc::BlockDevice::bd_address_t pageAddress)
{
	return bd.read(buffer, pageAddress, BlockSize);
}

template<typename BlockDevice>
void
FlashWriter<BlockDevice>::write(const uint8_t* data, size_t size)
{
	// first 4 bytes bufferA and bufferB contain the experiment_id (uint32_t)
	if(size <= BufferSize - indexWrite) {
		std::memcpy(&bufferActive[indexWrite+4], data, size);
		indexWrite += size;
	}
	else if(size <= BufferSize) {
		size_t firstWriteSize = BufferSize - indexWrite;
		std::memcpy(&bufferActive[indexWrite+4], &data[0], firstWriteSize);
		std::swap(bufferActive, bufferShadow);
		indexWrite = 0;
		writeBufferToFlash = true;
		std::memcpy(&bufferActive[indexWrite+4], &data[firstWriteSize], size - firstWriteSize);
		indexWrite += (size - firstWriteSize);
	}
	else {
		// This should not happen ...
		XPCC_LOG_ERROR << "Error: packet to large for flash buffer" << xpcc::endl;
	}
}

template<typename BlockDevice>
void
FlashWriter<BlockDevice>::flush()
{
	std::memset(&bufferActive[indexWrite+4], 0, (BufferSize - indexWrite));
	std::swap(bufferActive, bufferShadow);
	indexWrite = 0;
	writeBufferToFlash = true;
}

template<typename BlockDevice>
bool
FlashWriter<BlockDevice>::run()
{
	static_assert(BlockSize == BlockDevice::BlockSizeWrite, "FlashWriter BlockSize must match BlockDevice::BlockSizeWrite");
	PT_BEGIN();
	while(1)
	{
		if(writeBufferToFlash) {
			writeBufferToFlash = false;
			XPCC_LOG_ERROR << "Info: Writing data to flash page " << flashAddress << xpcc::endl;
			if(!PT_CALL(bd.program(bufferShadow, flashAddress, BlockSize))) {
				XPCC_LOG_ERROR << "Error: unable to write page to flash." << xpcc::endl;
			}
			flashAddress += BlockSize;
		}
		else {
			PT_YIELD();
		}
	}
	PT_END();
}


}
}
