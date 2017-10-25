/* Platform.hpp
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

#ifndef VIPER_PLATFORM_HPP
#define VIPER_PLATFORM_HPP

#include <limits>
#include <climits>

// Check code assumptions and fail compilation for crazy computers
static_assert(CHAR_BIT == 8, "Chars must be 8 bit");
static_assert(std::is_same<uint8_t, unsigned char>::value, "uint8_t must be defined as unsigned char");
static_assert(-1==~0,"Signed ints must be stored in 2's complement");
static_assert(std::numeric_limits<float>::is_iec559, "IEEE754 float types required");
static_assert(sizeof(float) == 4, "float must be 32 bit");

#ifndef LITTLE_ENDIAN
	#if defined(__ORDER_LITTLE_ENDIAN__)
		#define LITTLE_ENDIAN __ORDER_LITTLE_ENDIAN__
	#else
		#define LITTLE_ENDIAN 0x1234
	#endif
#endif

#ifndef BIG_ENDIAN
	#ifdef __ORDER_BIG_ENDIAN__
		#define BIG_ENDIAN __ORDER_BIG_ENDIAN__
	#else
		#define BIG_ENDIAN 0x3412
	#endif
#endif

#ifndef BYTE_ORDER
	// gcc, clang
	#if defined(__BYTE_ORDER__) && defined(__ORDER_LITTLE_ENDIAN__) && defined(__ORDER_BIG_ENDIAN__)
		#define BYTE_ORDER __BYTE_ORDER__
	#elif defined( _MSC_VER) && (defined( _M_IX86) || defined( _M_X64))
		// x86 Windows, always little-endian
		#define BYTE_ORDER LITTLE_ENDIAN
	#else
		#error "Unknown compiler, can't determine endianness."
	#endif
#endif

#if defined(__FLOAT_WORD_ORDER__)
	#define FLOAT_ORDER __FLOAT_WORD_ORDER__
#else
	#define FLOAT_ORDER BYTE_ORDER
#endif


#endif //VIPER_PLATFORM_HPP
