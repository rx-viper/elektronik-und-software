/* PacketGroup_impl.hpp
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

#include "PacketGroup.hpp"

#ifndef DOXYGEN

namespace viper
{
namespace communication
{

template<typename P, typename... Packets>
struct PacketHelper<P, Packets...>
{
	static constexpr size_t MaxPacketSize = std::max(P::PacketSize, PacketHelper<Packets...>::MaxPacketSize);

	template<typename PacketGroup>
	static bool read(const uint8_t* data, size_t size, PacketGroup& group)
	{
		// 1 byte packet id + min 1 byte packet payload
		if(size < 2)
			return false;

		if(data[0] == P::PacketID) {
			P& packet = group.template emplace<P>();
			//group.packetID = data[0];

			// offset +1: packet id at data[0] is not part of packet payload
			DataReader reader{data + 1, size - 1};
			const bool readSuccess = packet.read(reader);

			// return error if not all bytes have been read
			return readSuccess && reader.getPosition() == size - 1;
		} else {
			return PacketHelper<Packets...>::read(data, size, group);
		}
	}
};

template<>
struct PacketHelper<>
{
	static constexpr size_t MaxPacketSize = 0;

	template<typename PacketGroup>
	static bool read([[gnu::unused]] const uint8_t* data, [[gnu::unused]] size_t size,
					 [[gnu::unused]] PacketGroup& group)
	{ return false; }
};

template <typename... Packets>
bool PacketGroup<Packets...>::read(const uint8_t* data, size_t size)
{
	return PacketHelper<Packets...>::read(data, size, *this);
}


}
}

#endif
