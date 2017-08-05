/* CRC32.hpp
 *
 * Copyright (c) 2011 Stefan Brumme <create@stephan-brumme.com>
 * Copyright (c) 2017 Christopher Durand
 *
 * This software is provided 'as-is', without any express or implied
 * warranty. In no event will the authors be held liable for any damages
 * arising from the use of this software.
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 * claim that you wrote the original software. If you use this software
 *  in a product, an acknowledgment in the product documentation would be
 * appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 * misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 */

#ifndef VIPER_COMMUNICATION_CRC32_HPP
#define VIPER_COMMUNICATION_CRC32_HPP

#include <cstdint>

namespace viper
{
namespace communication
{

/**
 * CRC32 calculator (IEEE standard polynomial).
 *
 * This class uses a CRC32 algorithm by Stefan Brumme which
 * can be found on http://create.stephan-brumme.com/crc32/#half-byte
 *
 * @author Christopher Durand
 */
class CRC32
{
public:
	/// The CRC generator is initialized with the internal state 0x00000000
	CRC32() : state{0} {}

	/// Process byte
	/// @return CRC32 value
	inline uint32_t crc(uint8_t byte)
	{
		uint32_t value = ~state;

		value = Table[(value ^  byte) & 0x0F] ^ (value >> 4);
		value = Table[(value ^ (byte >> 4)) & 0x0F] ^ (value >> 4);

		state = ~value;
		return state;
	}

	/// Get the last computed CRC32 value
	inline uint32_t value() { return state; }

	/// Reset the internal state
	/// @arg state new internal state
	inline void reset(uint32_t state) { this->state = state; }

private:
	static const uint32_t Table[16];
	uint32_t state;
};

}
}

#endif // VIPER_COMMUNICATION_CRC32_HPP
