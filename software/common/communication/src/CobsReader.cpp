/* CobsReader.cpp
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

#include "CobsReader.hpp"

namespace viper
{
namespace communication
{

CobsReader::CobsReader(uint8_t* buffer_, size_t bufferSize_) : buffer{buffer_},
															   bufferSize{bufferSize_}, blockBytes{0}, bufferIndex{0}, state{State::End}
{
}

bool CobsReader::read(uint8_t data)
{
	if(data == FrameDelimiter) {
		if(state == State::End) {
			bufferIndex = 0;
			blockBytes = 0;
		} else {
			if(state == State::Fail || blockBytes > 0) {
				bufferIndex = 0;
				blockBytes = 0;
			}
			state = State::End;
			return false;
		}
	} else if(state == State::End) {
		blockBytes = data - 1;
		state = State::Reading;
	} else if(state == State::Reading) {
		if(bufferIndex >= bufferSize) {
			state = State::Fail;
			bufferIndex = 0;
			return false;
		}

		if(blockBytes > 0) {
			buffer[bufferIndex] = data;
			--blockBytes;
		} else {
			buffer[bufferIndex] = '\0';
			blockBytes = data - 1;
		}
		bufferIndex++;
	}
	return true;
}

bool CobsReader::isEndOfFrame() const
{
	return state == State::End;
}

bool CobsReader::isDataAvailable() const
{
	return isEndOfFrame() && bufferIndex > 0;
}

const uint8_t* CobsReader::data() const
{
	return buffer;
}

size_t CobsReader::size() const
{
	return isDataAvailable() ? bufferIndex : 0;
}

bool CobsReader::isInvalidFrame() const
{
	return !isDataAvailable() && state != State::Reading;
}

void CobsReader::dropFrame()
{
	blockBytes = 0;
	bufferIndex = 0;
	state = State::End;
}

}
}
