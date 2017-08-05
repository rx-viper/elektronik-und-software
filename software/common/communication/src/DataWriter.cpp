/* DataWriter.cpp
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

#include <cstring>
#include "DataWriter.hpp"

namespace viper
{
namespace communication
{

bool DataWriter::write(uint8_t value)
{
	return write(1, [=](uint8_t* buffer) {
		buffer[0] = value;
	});
}

bool DataWriter::write(uint16_t value)
{
	return write(2, [=](uint8_t* buffer) {
#if BYTE_ORDER == LITTLE_ENDIAN
		std::memcpy(buffer, reinterpret_cast<const uint8_t*>(&value), 2);
#else
		buffer[0] = value & 0xFF;
		buffer[1] = (value & (0xFF << 8)) >> 8;
#endif
	});
}

bool DataWriter::write(uint32_t value)
{
	return write(4, [=](uint8_t* buffer) {
#if BYTE_ORDER == LITTLE_ENDIAN
		std::memcpy(buffer, reinterpret_cast<const uint8_t*>(&value), 4);
#else
		buffer[0] = value & 0xFF;
		buffer[1] = (value & (0xFF << 8)) >> 8;
		buffer[2] = (value & (0xFF << 16)) >> 16;
		buffer[3] = (value & (0xFF << 24)) >> 24;
#endif
	});
}

bool DataWriter::write(int8_t value)
{
	return write(1, [=](uint8_t* buffer) {
		buffer[0] = static_cast<uint8_t>(value);
	});
}

bool DataWriter::write(int16_t value)
{
	return write(2, [=](uint8_t* buffer) {
#if BYTE_ORDER == LITTLE_ENDIAN
		std::memcpy(buffer, reinterpret_cast<const uint8_t*>(&value), 2);
#else
		buffer[0] = value & 0xFF;
		buffer[1] = (value & (0xFF << 8)) >> 8;
#endif
	});
}

bool DataWriter::write(int32_t value)
{
	return write(4, [=](uint8_t* buffer) {
#if BYTE_ORDER == LITTLE_ENDIAN
		std::memcpy(buffer, reinterpret_cast<const uint8_t*>(&value), 4);
#else
		buffer[0] = value & 0xFF;
		buffer[1] = (value & (0xFF << 8)) >> 8;
		buffer[2] = (value & (0xFF << 16)) >> 16;
		buffer[3] = (value & (0xFF << 24)) >> 24;
#endif
	});
}

template<typename WriteFunc>
bool DataWriter::write(size_t bytes, WriteFunc writer)
{
	if (error || position + bytes > size || position + bytes < position) {
		error = true;
		return false;
	}

	writer(data + position);
	position += bytes;
	return true;
}

}
}
