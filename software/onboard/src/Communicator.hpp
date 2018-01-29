#ifndef VIPER_ONBOARD_COMMUNICATOR_HPP
#define VIPER_ONBOARD_COMMUNICATOR_HPP

#include <cstdint>
#include <cstddef>
#include <array>

#include "CommunicationFlashWriter.hpp"

#include <xpcc/debug/logger.hpp>

#include "CobsReader.hpp"
#include "CobsWriter.hpp"

#include "Packets.hpp"

using viper::communication::CobsReader;
using viper::communication::CobsWriter;

using viper::onboard::CommunicationFlashWriter;

using viper::packet::GroundstationPackets;

namespace viper
{
namespace onboard
{
/**
 * Send and receive packets of a PacketGroup over an arbitrary byte-oriented data link
 * compatible with the Uart interface of xpcc.
 *
 * All packet types must be member of a packet group specified as
 * the first class template argument.
 */
template<typename Packets, typename Device>
class Communicator
{
public:
	Communicator(CommunicationFlashWriter& flashWriter_, bool flashEnabled_ = true);

	/// Test if a packet has been received and is available for reading
	inline bool isPacketAvailable() { return packetAvailable; }

	/// Get the last received packet
	/// @pre isPacketAvailable() must be true
	inline const Packets& getPacket() { return packet; }

	/// Drop the received packet
	inline void dropPacket() { packetAvailable = false; }

	/// Send a packet
	template<typename PacketT>
	void sendPacket(const PacketT& packet);

	/// Call this function periodically in the main loop
	void update();

	/// Flush flashWriter
	void flushFlashWriter();

private:
	// Maximum payload of a frame, +4: CRC Size, +1 Packet ID
	static constexpr size_t MaxFramePayload = Packets::MaxPacketSize + 5;
	// Maximum encoded size of a frame
	static constexpr size_t MaxFrameSize = CobsWriter::minBufferSize(MaxFramePayload);

	void writeUInt32(uint32_t data, CobsWriter& writer);
	uint32_t readUInt32(const uint8_t data[4]);

	void parsePacket(const uint8_t* data, size_t size);

	template<typename PacketT>
	size_t writePacketPayload(const PacketT& packet);

	/// packet output buffer, +1 byte id
	std::array<uint8_t, Packets::MaxPacketSize + 1> packetBuffer;

	/// frame output buffer
	std::array<uint8_t, MaxFrameSize> frameBuffer;
	
	std::array<uint8_t, MaxFramePayload> receiveBuffer;

	/// array to store the last sent sequence number for all packet types
	std::array<uint32_t, Packets::NumTypes> sendSequenceNumbers;

	CobsWriter frameWriter;
	CobsReader frameReader;
	CommunicationFlashWriter& flashWriter;
	bool flashEnabled;

	Packets packet;
	bool packetAvailable;
};

}
}

#include "Communicator_impl.hpp"

#endif // VIPER_ONBOARD_COMMUNICATOR_HPP

