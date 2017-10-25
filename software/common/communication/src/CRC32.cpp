/* CRC32.cpp
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

#include "CRC32.hpp"

namespace viper
{
namespace communication
{

const uint32_t CRC32::Table[16] = {0x00000000,0x1DB71064,0x3B6E20C8,0x26D930AC,
								   0x76DC4190,0x6B6B51F4,0x4DB26158,0x5005713C,
								   0xEDB88320,0xF00F9344,0xD6D6A3E8,0xCB61B38C,
								   0x9B64C2B0,0x86D3D2D4,0xA00AE278,0xBDBDF21C};

}
}
