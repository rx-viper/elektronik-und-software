/* CobsReader.hpp
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

#ifndef VIPER_COMMUNICATION_COBS_READER_HPP
#define VIPER_COMMUNICATION_COBS_READER_HPP

#include <cstdint>
#include <cstddef>

namespace viper
{
namespace communication
{

/**
 * This class decodes data encoded with Consistent Overhead
 * Byte Stuffing (COBS). The output is stored in a byte buffer.
 *
 * Data is read until a frame delimiter has been received.
 * If a data frame has been decoded succesfully, it can be accessed
 * through the data() and size() member functions.
 *
 * If the supplied buffer is to small to store a decoded frame the reader will
 * discard all received data and enter an error state that will be cleared
 * automatically by a reading	more data after the next frame delimiter.
 */
class CobsReader
{
public:
	static constexpr uint8_t FrameDelimiter{0x00};

	/// Constructs a COBS reader
	///
	/// The supplied buffer must be minimally as large as
	/// the maximum expected data payload size.
	///
	/// @arg buffer The buffer that will be used to store decoded frame data
	/// @arg bufferSize The size of the supplied buffer
	CobsReader(uint8_t* buffer, size_t bufferSize);

	/// Read encoded frame data
	/// @return True, if more input is required. False, if a
	/// complete frame has been decoded or an error occurred.
	bool read(uint8_t data);

	/// Return true if and only if a complete frame has
	/// been decoded and is available for reading.
	///
	/// This state is reset when calling read().
	bool isDataAvailable() const;

	/// Return true if and only if the last processed
	/// byte was a frame delimiter
	///
	/// This state is reset when calling read().
	bool isEndOfFrame() const;

	/// Check for an error condition.
	/// This state is reset when calling read().
	bool isInvalidFrame() const;

	/// The received frame data
	/// @pre This data is only valid if isDataAvailable() returns true.
	const uint8_t* data() const;

	/// The size of the received frame
	/// @pre This value is only valid if isDataAvailable() returns true.
	size_t size() const;

	/// Drop the received frame.
	void dropFrame();
private:
	uint8_t* const buffer;
	const size_t bufferSize;
	uint8_t blockBytes;
	size_t bufferIndex;

	enum class State
	{
		Reading,
		End,
		Fail
	} state;
};

}
}

#endif // VIPER_COMMON_COBS_READER_HPP
