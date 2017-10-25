/* DataReader.cpp
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

#include "DataReader.hpp"

#include <cstring>

namespace viper
{
namespace communication
{

DataReader::DataReader(const uint8_t* data_, size_t size_) : data(data_), size(size_), position(0), error(false)
{
}

bool DataReader::read(uint8_t& value)
{
	return read(1, [&](const uint8_t* buffer) {
		value = buffer[0];
	});
}

bool DataReader::read(uint16_t& value)
{
	return read(2, [&](const uint8_t* buffer) {
#if BYTE_ORDER == LITTLE_ENDIAN
		std::memcpy(reinterpret_cast<uint8_t*>(&value), buffer, 2);
#else
		value  = buffer[0];
		value |= buffer[1] << UINT16_C(8);
#endif
	});
}

bool DataReader::read(uint32_t& value)
{
	return read(4, [&](const uint8_t* buffer) {
#if BYTE_ORDER == LITTLE_ENDIAN
		std::memcpy(reinterpret_cast<uint8_t*>(&value), buffer, 4);
#else
		value  = buffer[0];
		value |= buffer[1] << UINT32_C(8);
		value |= buffer[2] << UINT32_C(16);
		value |= buffer[3] << UINT32_C(24);
#endif
	});
}

bool DataReader::read(int8_t& value)
{
	return read(1, [&](const uint8_t* buffer) {
		value = static_cast<int8_t>(buffer[0]);
	});
}

bool DataReader::read(int16_t& value)
{
	return read(2, [&](const uint8_t* buffer) {
#if BYTE_ORDER == LITTLE_ENDIAN
		std::memcpy(reinterpret_cast<uint8_t*>(&value), buffer, 2);
#else
		value  = buffer[0];
		value |= buffer[1] << INT16_C(8);
#endif
	});
}

bool DataReader::read(int32_t& value)
{
	return read(4, [&](const uint8_t* buffer) {
#if BYTE_ORDER == LITTLE_ENDIAN
		std::memcpy(reinterpret_cast<uint8_t*>(&value), buffer, 4);
#else
		value  = buffer[0];
		value |= buffer[1] << INT32_C(8);
		value |= buffer[2] << INT32_C(16);
		value |= buffer[3] << INT32_C(24);
#endif
	});
}

template<typename ReadFunc>
bool DataReader::read(size_t bytes, ReadFunc reader)
{
	if (error || position + bytes > size || position + bytes < position) {
		error = true;
		return false;
	}

	reader(data + position);
	position += bytes;
	return true;
}

}
}
