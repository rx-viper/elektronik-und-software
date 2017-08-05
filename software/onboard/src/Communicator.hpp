#ifndef VIPER_ONBOARD_COMMUNICATOR_HPP
#define VIPER_ONBOARD_COMMUNICATOR_HPP

#include <cstdint>
#include <cstddef>
#include <array>

#include "CobsReader.hpp"
#include "CobsWriter.hpp"

using viper::communication::CobsReader;
using viper::communication::CobsWriter;

namespace viper
{
namespace onboard
{
/**
 * Send and receive packets from a PacketGroup over an arbitrary byte-oriented data link
 * device compatible with the Uart interface of xpcc.
 *
 * All packet types must be member of a packet group is specified as
 * the first class template argument.
 */
template<typename Packets, typename Device>
class Communicator
{
public:
	Communicator();

	/// Test if a packet has been received and is available for reading
	inline bool isPacketAvailable() { return packetAvailable; }
	
	/// Get the last received packet
	/// @pre isPacketAvailable() must be true
	inline const Packets& getPacket() { return packet; }
	
	/// Get the sequence number for the last received packet
	inline uint32_t getReceivedSequenceNumber() { return receivedSequenceNumber; }
	
	/// Drop the received packet
	inline void dropPacket() { packetAvailable = false; }

	/// Send a packet
	template<typename PacketT>
	void sendPacket(const PacketT& packet);

	/// Call this function peridically in the main loop
	void update();

private:
	// Maximum payload of a frame, +4: CRC Size, +4: Sequence Number, +1 Packet ID
	static constexpr size_t MaxFramePayload = Packets::MaxPacketSize + 9;
	// Maximum encoded size of a frame
	static constexpr size_t MaxFrameSize = CobsWriter::minBufferSize(MaxFramePayload);

	void writeUInt32(uint32_t data, CobsWriter& writer);
	uint32_t readUInt32(const uint8_t data[4]);

	void parsePacket(const uint8_t* data, size_t size);

	template<typename PacketT>
	size_t writePacketPayload(const PacketT& packet);

	/// packet output buffer, +5 = 1 byte id + 4 bytes sequence number
	std::array<uint8_t, Packets::MaxPacketSize + 5> packetBuffer;
	
	/// frame output buffer
	std::array<uint8_t, MaxFrameSize> frameBuffer;
	
	std::array<uint8_t, MaxFramePayload> receiveBuffer;

	/// array to store the last sent sequence number for all packet types
	std::array<uint32_t, Packets::NumTypes> sendSequenceNumbers;

	CobsWriter frameWriter;
	CobsReader frameReader;

	Packets packet;
	bool packetAvailable;
	uint32_t receivedSequenceNumber;
};

}
}

#include "Communicator_impl.hpp"

#endif // VIPER_ONBOARD_COMMUNICATOR_HPP

