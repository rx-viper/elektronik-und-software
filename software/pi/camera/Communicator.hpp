#ifndef VIPER_PI_COMMUNICATOR_HPP
#define VIPER_PI_COMMUNICATOR_HPP

#include <memory>
#include <deque>
#include <iostream>
#include <chrono>

#include "SerialPort.hpp"

#include "CobsReader.hpp"
#include "CobsWriter.hpp"
#include "DataWriter.hpp"
#include "CRC32.hpp"

#include "Packets.hpp"

using viper::communication::CobsReader;
using viper::communication::CobsWriter;
using viper::communication::DataWriter;
using viper::communication::CRC32;

using Packets = viper::packet::PiPackets;

using namespace std::chrono_literals;

class Communicator
{
public:
	static constexpr size_t InputBufferSize = 4096;

	Communicator();
	Communicator(std::shared_ptr<SerialPort> serialPort);

	~Communicator() = default;

	void open();

	void close() noexcept;

	bool isOpen() const noexcept;

	bool isPacketAvailable() const;

	std::unique_ptr<Packets> readPacket();

	template<typename PacketType>
	void sendPacket(const PacketType& packet);

	void reset() noexcept;

	void setSerialPort(std::shared_ptr<SerialPort> backend);

	void update(std::chrono::milliseconds timeout = 100ms);

private:
	// Maximum payload of a frame, +4: CRC Size, +1 Packet ID
	static constexpr size_t MaxFramePayload = Packets::MaxPacketSize + 5;
	// Maximum encoded size of a frame
	static constexpr size_t MaxFrameSize = CobsWriter::minBufferSize(MaxFramePayload);

	void processFrame();
	bool reopenSerialPort();
	size_t readFromSerialPort(uint8_t* data, size_t maxSize);

	template<typename PacketType>
	size_t writePacketPayload(const PacketType& packet);

	void sendFrame(const uint8_t* data, size_t size);

	static void writeUInt32(uint32_t value, CobsWriter& writer);
	static uint32_t readUInt32(const uint8_t data[4]);

	/// packet output buffer, +1 byte id
	std::array<uint8_t, Packets::MaxPacketSize + 1> packetOutBuffer;

	std::array<uint8_t, MaxFrameSize> frameOutBuffer;

	std::array<uint8_t, MaxFramePayload> frameInBuffer;

	/// array to store the last sent sequence number for all packet types
	std::array<uint32_t, Packets::NumTypes> sendSequenceNumbers;

	std::shared_ptr<SerialPort> serialPort;
	CobsReader frameReader;
	CobsWriter frameWriter;

	std::array<uint8_t, InputBufferSize> receivedData;
	std::deque<std::unique_ptr<Packets>> packetQueue;
};


template<typename PacketType>
size_t Communicator::writePacketPayload(const PacketType& packet)
{
	constexpr size_t typeIndex{Packets::template getTypeIndex<PacketType>()};
	static_assert(typeIndex < Packets::NumTypes, "Packet type index out of range");

	DataWriter writer{packetOutBuffer.data(), packetOutBuffer.size()};

	// set sequence number in packet
	packet.sequenceNumber = sendSequenceNumbers[typeIndex]++;

	// write packet id to packetBuffer
	constexpr uint8_t id{PacketType::PacketID};
	writer.write(id);

	// write packet data to packetBuffer
	packet.write(writer);

	constexpr size_t expectedSize = PacketType::PacketSize + 1;
	if(writer.getPosition() != expectedSize) {
		std::cerr << "BUG: Invalid payload size " << writer.getPosition();
		std::cerr << ", expected: " << expectedSize << std::endl;
		return 0;
	}

	return writer.isError() ? 0 : writer.getPosition();
}


template<typename PacketType>
void Communicator::sendPacket(const PacketType& packet)
{
	if(!isOpen()) {
		throw std::runtime_error{std::string{"communicator is not open"}};
	}

	frameWriter.startFrame();

	// write packet header and data to packetBuffer
	const size_t packetBytes = writePacketPayload<PacketType>(packet);

	// This should not happen ...
	if(!packetBytes) {
		throw std::runtime_error(std::string{"BUG: Serializing packet failed"});
	}

	CRC32 crc;
	for(size_t index = 0; index < packetBytes; ++index) {
		const uint8_t byte = packetOutBuffer[index];
		frameWriter.write(byte);
		crc.crc(byte);
	}

	writeUInt32(crc.value(), frameWriter);

	frameWriter.endFrame();

	if(!frameWriter.isDataAvailable()) {
		throw std::runtime_error{std::string{"BUG: frame output buffer too small"}};
	}

	sendFrame(frameWriter.data(), frameWriter.size());
}

#endif // VIPER_PI_COMMUNICATOR_HPP
