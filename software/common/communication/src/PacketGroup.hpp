/* PacketGroup.hpp
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

#ifndef VIPER_COMMUNICATION_PACKETGROUP_HPP
#define VIPER_COMMUNICATION_PACKETGROUP_HPP

#include "Variant.hpp"
#include "DataReader.hpp"

namespace viper
{
namespace  communication
{

// Forward declaration for friending
template<typename... Packets>
struct PacketHelper;

/**
 * A type-safe union that can store one packet of different types specified in the template argument list.
 * It also supports reading serialized packets from byte data.
 *
 * For usage instructions refer to the documentation of Variant.
 *
 * @warning This class is not meant to be used polymorphically. Never destroy a PacketGroup through a base class pointer.
 */
template<typename... Packets>
class PacketGroup : public Variant<Packets...>
{
public:
	static constexpr size_t MaxPacketSize = PacketHelper<Packets...>::MaxPacketSize;

	// inherit constructors
	using Variant<Packets...>::Variant;

	// use assignment operators from Variant
	using Variant<Packets...>::operator=;

	/// Read a packet from byte data
	/// The packet must be a member of this packet group. Otherwise the operation fails.
	/// @param data data[0] must contain the packet id, the remaining bytes contain the packet data
	/// @return true on success, false on error
	bool read(const uint8_t* data, size_t size);

	template<typename... Ps>
	friend
	struct PacketHelper;
};

}
}

#include "PacketGroup_impl.hpp"

#endif // VIPER_COMMUNICATION_PACKETGROUP_HPP
