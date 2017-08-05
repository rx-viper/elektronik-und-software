/* DataReader.hpp
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

#ifndef VIPER_COMMUNICATION_DATA_READER_HPP
#define VIPER_COMMUNICATION_DATA_READER_HPP

#include <cstdint>
#include <array>

#include "Platform.hpp"

namespace viper
{
namespace communication
{

/**
 * Stream-like class that deserializes data encoded with DataWriter.
 * Supported types: (u)int8_t, (u)int16_t, (u)int32_t,
 * Enums with those as an underlying type, bool
 * and std::array of all supported scalar types.
 *
 * A series of serialized values can be read by subsequently calling read().
 */
class DataReader
{
public:
	DataReader(const uint8_t* data_, size_t size_);

	/// Deserialize a uint8_t value
	bool read(uint8_t& value);

	/// Deserialize a uint16_t value
	bool read(uint16_t& value);

	/// Deserialize a uint32_t value
	bool read(uint32_t& value);

	/// Deserialize a int8_t value
	bool read(int8_t& value);

	/// Deserialize a int16_t value
	bool read(int16_t& value);

	/// Deserialize a int32_t value
	bool read(int32_t& value);

	/// Deserialize an array
	template<typename T, size_t N>
	bool read(std::array<T, N>& array);

	/// Deserialize an enum value
	/// This reads a value of the enum's underlying type
	template<typename EnumT,
			typename = std::enable_if_t<std::is_enum<EnumT>::value>>
	bool read(EnumT& value);

	/// Get the size of the input buffer
	size_t getSize()
	{
		return size;
	}

	/// Get the current read position in the input buffer
	size_t getPosition()
	{
		return position;
	}

	/// Return true if an out of bounds read occured
	bool isError()
	{
		return error;
	}

	/// Reset read position to the beginning
	/// @post getPosition() is 0
	/// @post isError() is false
	void reset()
	{
		position = 0;
		error = false;
	}

private:
	template<typename ReadFunc>
	bool read(size_t size, ReadFunc reader);

	const uint8_t* data;
	size_t size;
	size_t position;
	bool error;
};

template<typename T, size_t N>
bool DataReader::read(std::array<T, N>& array)
{
	if (error) {
		return false;
	}

	for (size_t index = 0; index < N; ++index) {
		if (!read(array[index])) {
			error = true;
			return false;
		}
	}

	return true;
}

template<typename EnumT,
		typename = std::enable_if_t<std::is_enum<EnumT>::value>>
bool DataReader::read(EnumT& value)
{
	std::underlying_type_t<EnumT> intValue;

	const bool success = read(intValue);

	value = static_cast<EnumT>(intValue);
	return success;
};

}
}

#endif // VIPER_COMMUNICATION_DATA_READER_HPP
