/* CobsWriter.hpp
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
#ifndef VIPER_COMMUNICATION_COBS_WRITER_HPP
#define VIPER_COMMUNICATION_COBS_WRITER_HPP

#include <cstdint>
#include <cstddef>

namespace viper
{
namespace communication
{

/**
 * This class encodes data with Consistent Overhead
 * Byte Stuffing (COBS). The output is stored in a byte buffer.
 *
 * At the beginning of a new frame startFrame() must be called.
 * After all data has been written call endFrame().
 * If the operation is succesful, the encoded frame can be accessed
 * through the data() and size() member functions.
 *
 * If the supplied buffer is to small to store the encoded frame all
 * written data will be discarded and an error state will be entered.
 * It is cleared when calling startFrame().
 */
class CobsWriter
{
public:
	static constexpr uint8_t FrameDelimiter{0x00};

	/// Constructs a COBS reader
	///
	/// The supplied buffer must be as large as
	/// the maximum encoded frame size which can be determined
	/// from the maximum payload size using the static constexpr
	/// minBufferSize member function.
	///
	/// @arg buffer The buffer that will be used to store encoded frame data
	/// @arg bufferSize The size of the supplied buffer
	CobsWriter(uint8_t* buffer, size_t bufferSize);

	/// Start a new frame.
	/// @post isDataAvailable() is false
	/// @post error() is false
	void startFrame();

	/// Encode a byte
	/// @return True on success, false if the buffer is full.
	bool write(uint8_t data);

	/// End a frame.
	/// A frame delimiter will be appended to the output.
	/// If the output buffer size is sufficient
	/// the encoded data can be read using data() and size().
	void endFrame();

	/// Check if an encoded frame can be read
	bool isDataAvailable() const;

	/// Check for an error condition
	bool error() const;

	/// Encoded frame data
	/// @pre isDataAvailable() must be true
	const uint8_t* data() const;

	/// Size of encoded frame data
	/// @pre isDataAvailable() must be true
	size_t size() const;

	/// Determine the required buffer size to hold an encoded frame
	/// @param maxPayloadSize Size of the data to be encoded
    static inline constexpr size_t minBufferSize(size_t maxPayloadSize)
	{
		// first +1: one byte overhead of COBS
		// second +1: one byte frame delimiter
		return maxPayloadSize + maxPayloadSize / 254 + 1 + 1;
	}

private:
	inline void newBlock();

	uint8_t* const buffer;
	const size_t bufferSize;
	size_t blockStart;
	uint8_t blockSize;

	enum class State
	{
		Running,
		End,
		Fail
	} state;
};

}
}

#endif // VIPER_COMMUNICATION_COBS_WRITER_HPP
