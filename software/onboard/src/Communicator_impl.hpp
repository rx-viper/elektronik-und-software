#include "Communicator.hpp"

#include <algorithm>
#include <iostream>

#include "CRC32.hpp"
#include "DataWriter.hpp"

using viper::communication::CobsReader;
using viper::communication::CobsWriter;
using viper::communication::CRC32;
using viper::communication::DataWriter;

namespace viper
{
namespace onboard
{

template<typename Packets, typename Device>
Communicator<Packets, Device>::Communicator() :
	frameWriter{frameBuffer.data(), frameBuffer.size()},
	frameReader{receiveBuffer.data(), receiveBuffer.size()}, packetAvailable{false}
{
	sendSequenceNumbers.fill(0);
}

template<typename Packets, typename Device>
template<typename PacketT>
void Communicator<Packets, Device>::sendPacket(const PacketT& packet)
{
	frameWriter.startFrame();

	// write packet header and data to packetBuffer
	const size_t packetBytes = writePacketPayload<PacketT>(packet);

	// This should not happen ...
	if(!packetBytes) {
		XPCC_LOG_ERROR << "BUG: Serializing packet failed" << xpcc::endl;
	}

	CRC32 crc;
	for(size_t index = 0; index < packetBytes; ++index) {
		const uint8_t byte = packetBuffer[index];
		frameWriter.write(byte);
		crc.crc(byte);
	}

	writeUInt32(crc.value(), frameWriter);

	frameWriter.endFrame();

	// This should not happen ...
	if(!frameWriter.isDataAvailable()) {
		XPCC_LOG_ERROR << "BUG: The frame buffer is too small to store the packet to send" << xpcc::endl;
		return;
	}

	Device::write(frameWriter.data(), frameWriter.size());
}

template<typename Packets, typename Device>
void Communicator<Packets, Device>::update()
{
	uint8_t byte;
	bool errorState = false;

	// Read data until a complete frame has been received
	while(!frameReader.isDataAvailable() && Device::read(byte)) {
		frameReader.read(byte);

		if(frameReader.isInvalidFrame() && !errorState) {
			XPCC_LOG_WARNING << "Invalid frame received" << xpcc::endl;
			errorState = true;
		} else if(frameReader.isDataAvailable()) {
			errorState = false;
		}
	}

	if(frameReader.isDataAvailable()) {
		parsePacket(frameReader.data(), frameReader.size());
		frameReader.dropFrame();
	}
}

template<typename Packets, typename Device>
void Communicator<Packets, Device>::writeUInt32(uint32_t value, CobsWriter& writer)
{
	writer.write(value & UINT32_C(0x000000FF));
	writer.write((value & UINT32_C(0x0000FF00)) >> 8);
	writer.write((value & UINT32_C(0x00FF0000)) >> 16);
	writer.write((value & UINT32_C(0xFF000000)) >> 24);
}

template<typename Packets, typename Device>
uint32_t Communicator<Packets, Device>::readUInt32(const uint8_t data[4])
{
	uint32_t value = data[0];
	value |= data[1] << UINT32_C(8);
	value |= data[2] << UINT32_C(16);
	value |= data[3] << UINT32_C(24);
	return value;
}

template<typename Packets, typename Device>
void Communicator<Packets, Device>::parsePacket(const uint8_t* data, size_t size)
{
	/*
	 * Packet layout
	 * sequence number (4 bytes)
	 * id (1 byte)
	 * data
	 * crc32 (4 bytes)
	 */
	constexpr size_t sequenceNumberSize = 4;
	constexpr size_t idSize = 1;
	constexpr size_t crcSize = 4;

	packetAvailable = false;

	if(size < idSize + sequenceNumberSize + crcSize + 1) {
		XPCC_LOG_WARNING << "Invalid data received" << xpcc::endl;
		return;
	}

	receivedSequenceNumber = readUInt32(data);

	CRC32 crc;
	for(size_t index = 0; index < size - crcSize; ++index) {
		crc.crc(data[index]);
	}

	uint32_t receivedCRC = readUInt32(data + size - crcSize);

	if(receivedCRC != crc.value()) {
		XPCC_LOG_WARNING << "CRC error" << xpcc::endl;
		return;
	}

	if(packet.read(data + sequenceNumberSize, size - sequenceNumberSize - crcSize)) {
		packetAvailable = true;
	} else {
		XPCC_LOG_ERROR << "BUG: Invalid packet format" << xpcc::endl;
	}
}

template<typename Packets, typename Device>
template<typename PacketT>
size_t Communicator<Packets, Device>::writePacketPayload(const PacketT& packet)
{
	constexpr size_t typeIndex{Packets::template getTypeIndex<PacketT>()};
	static_assert(typeIndex < Packets::NumTypes, "Packet type index out of range");

	DataWriter writer{packetBuffer.data(), packetBuffer.size()};

	// write sequence number to packetBuffer
	const uint32_t sequenceNumber = sendSequenceNumbers[typeIndex]++;
	writer.write(sequenceNumber);

	// write packet id to packetBuffer
	constexpr uint8_t id{PacketT::PacketID};
	writer.write(id);

	// write packet data to packetBuffer
	packet.write(writer);

	constexpr size_t expectedSize = PacketT::PacketSize + sizeof(uint32_t) + 1;
	if(writer.getPosition() != expectedSize) {
		XPCC_LOG_ERROR << "BUG: Invalid payload size " << writer.getPosition();
		XPCC_LOG_ERROR << ", expected: " << expectedSize << xpcc::endl;
		return 0;
	}

	return writer.isError() ? 0 : writer.getPosition();
}

}
}
