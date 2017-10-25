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

#ifndef VIPER_COMMUNICATION_DATA_WRITER_HPP
#define VIPER_COMMUNICATION_DATA_WRITER_HPP

#include <cstdint>
#include <array>

#include "Platform.hpp"

namespace viper
{
namespace communication
{

/**
 * Stream-like class that serializes data.
 * Data is subsequently written to a buffer when write() is called.
 *
 * Numbers are written in little-endian format.
 *
 * Supported types: (u)int8_t, (u)int16_t, (u)int32_t,
 * Enums with those as an underlying type, bool
 * and std::array of all supported scalar types.
 */
class DataWriter
{
public:
	/// Initialize writer with output buffer
	DataWriter(uint8_t* data_, size_t size_) : data(data_), size(size_), position(0), error(false)
	{
	}

	/// Write a uint8_t to the output buffer
	/// @return true on success, false if buffer is full
	bool write(uint8_t value);

	/// Write a uint16_t to the output buffer
	/// @return true on success, false if buffer is full
	bool write(uint16_t value);

	/// Write a uint32_t to the output buffer
	/// @return true on success, false if buffer is full
	bool write(uint32_t value);

	/// Write an int8_t to the output buffer
	/// @return true on success, false if buffer is full
	bool write(int8_t value);

	/// Write an int16_t to the output buffer
	/// @return true on success, false if buffer is full
	bool write(int16_t value);

	/// Write an int32_t to the output buffer
	/// @return true on success, false if buffer is full
	bool write(int32_t value);

	/// Write an array to the output buffer
	/// @return true on success, false if buffer is full
	template<typename T, size_t N>
	bool write(const std::array<T, N>& array);

	/// Write an enum value to the output buffer
	/// It is serialized in the format of the underlying type
	/// @return true on success, false if buffer is full
	template<typename EnumT,
			typename = std::enable_if_t<std::is_enum<EnumT>::value>>
	bool write(EnumT value);

	/// size of output buffer
	inline size_t getSize()
	{
		return size;
	}

	/// Current write index
	inline size_t getPosition()
	{
		return position;
	}

	/// Check for out of bounds write
	inline bool isError()
	{
		return error;
	}

	/// Reset write position to the beginning of the buffer
	/// @post isError() is false
	/// @post getPosition() is 0
	inline void reset()
	{
		position = 0;
		error = false;
	}

private:
	template<typename WriteFunc>
	bool write(size_t size, WriteFunc reader);

	uint8_t* const data;
	size_t size;
	size_t position;
	bool error;
};

template<typename T, size_t N>
bool DataWriter::write(const std::array<T, N>& array)
{
	if (error) {
		return false;
	}

	for (size_t index = 0; index < N; ++index) {
		if (!write(array[index])) {
			error = true;
			return false;
		}
	}

	return true;
}

template<typename EnumT, typename>
bool DataWriter::write(EnumT value)
{
	const auto intValue = static_cast<std::underlying_type_t<EnumT>>(value);
	return write(intValue);
};

}
}

#endif //VIPER_COMMUNICATION_DATA_WRITER_HPP
