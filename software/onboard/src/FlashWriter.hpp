/* FlashWriter.hpp
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
#define VIPER_ONBOARD_FLASHWRITER_HPP

#include <xpcc/processing/protothread.hpp>
#include <xpcc/processing/timer/periodic_timer.hpp>
#include <xpcc/architecture/interface/block_device.hpp>

namespace viper
{
namespace onboard
{

template<typename BlockDevice>
class FlashWriter : protected xpcc::NestedResumable<3>, protected xpcc::pt::Protothread
{
public:
	FlashWriter();
	FlashWriter(const FlashWriter&) = delete;
	FlashWriter& operator=(const FlashWriter&) = delete;

	xpcc::ResumableResult<uint32_t> initialize();
	xpcc::ResumableResult<bool> readPage(uint8_t* buffer, xpcc::BlockDevice::bd_address_t pageAddress);
	void write(const uint8_t* data, size_t size);
	void flush();

	bool run();

private:
	static constexpr xpcc::BlockDevice::bd_size_t BlockSize = BlockDevice::BlockSizeWrite;
	static constexpr size_t BufferSize = BlockSize - sizeof(uint32_t);

private:
	BlockDevice bd;

	// first 4 bytes bufferA and bufferB contain the experiment_id (uint32_t)
	uint8_t bufferA[BlockSize];
	uint8_t bufferB[BlockSize];
	uint8_t* bufferActive;
	size_t indexWrite;
	uint8_t* bufferShadow;

	uint32_t experimentId;
	uint32_t lastExperimentId;

	bool writeBufferToFlash = false;
	xpcc::BlockDevice::bd_address_t flashAddress;
};

}
}

#include "FlashWriter_impl.hpp"

#endif // VIPER_ONBOARD_FLASHWRITER_HPP
