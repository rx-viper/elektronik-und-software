/* CobsWriter.cpp
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

#include "CobsWriter.hpp"

namespace viper
{
namespace communication
{

CobsWriter::CobsWriter(uint8_t* buffer_, size_t bufferSize_) : buffer{buffer_},
															 bufferSize{bufferSize_},
															   blockStart{0},
															   blockSize{0},
															 state{State::Running}
{
}

void CobsWriter::startFrame()
{
	state = State::Running;

	if(!bufferSize) {
		state = State::Fail;
		return;
	}

	blockStart = 0;
	blockSize = 0;
}

bool CobsWriter::write(uint8_t data)
{
	if(state != State::Running) {
		return false;
	}

	if(data == FrameDelimiter || blockSize == 0xFE) {
		newBlock();
	} else {
		const auto index = blockStart + blockSize + 1;

		if(index >= bufferSize) {
			state = State::Fail;
			return false;
		}

		buffer[index] = data;
		++blockSize;
	}

	return true;
}

void CobsWriter::endFrame()
{
	if(state == State::Running) {
		newBlock();
		state = State::End;

		const auto delimiterIndex = blockStart + blockSize;
		if(delimiterIndex >= bufferSize) {
			state = State::Fail;
			return;
		}

		buffer[delimiterIndex] = FrameDelimiter;
	}
}

bool CobsWriter::isDataAvailable() const
{
	return state == State::End;
}

bool CobsWriter::error() const
{
	return state == State::Fail;
}

const uint8_t* CobsWriter::data() const
{
	return buffer;
}

size_t CobsWriter::size() const
{
	// +1: frame delimiter at the end
	return blockStart + blockSize + 1;
}

void CobsWriter::newBlock()
{
	if(state != State::Running) {
		return;
	}

	if(blockStart + blockSize >= bufferSize) {
		state = State::Fail;
		return;
	}

	buffer[blockStart] = UINT8_C(0x01) + blockSize;
	blockStart += blockSize + 1;
	blockSize = 0;
}

}
}
