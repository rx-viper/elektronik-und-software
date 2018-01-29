#include "Communicator.hpp"

#include <iostream>

#include "Packets.hpp"

using viper::communication::CRC32;
using viper::communication::CobsWriter;

Communicator::Communicator() : sendSequenceNumbers{}, frameReader{frameInBuffer.data(), frameInBuffer.size()},
	frameWriter{frameOutBuffer.data(), frameOutBuffer.size()}
{
}

Communicator::Communicator(std::shared_ptr<SerialPort> serialPort_)
	: sendSequenceNumbers{},
	  serialPort{std::move(serialPort_)},
	  frameReader{frameInBuffer.data(), frameInBuffer.size()},
	  frameWriter{frameOutBuffer.data(), frameOutBuffer.size()}
{
}

void Communicator::open()
{
	if(!serialPort) {
		throw std::logic_error{std::string{"serial port is nullptr"}};
	}

	serialPort->open();
}

void Communicator::close() noexcept
{
	if(serialPort) {
		serialPort->close();
	}
}

bool Communicator::isOpen() const noexcept
{
	if(!serialPort) {
		return false;
	}

	return serialPort->isOpen();
}

bool Communicator::isPacketAvailable() const
{
	return !packetQueue.empty();
}

std::unique_ptr<Packets> Communicator::readPacket()
{
	if(packetQueue.empty()) {
		return nullptr;
	}

	auto packet = std::move(packetQueue.front());
	packetQueue.pop_front();

	return packet;
}

void Communicator::reset() noexcept
{
	close();
	packetQueue.clear();
	packetQueue.shrink_to_fit();
	serialPort = nullptr;
}

void Communicator::setSerialPort(std::shared_ptr<SerialPort> serialPort_)
{
	close();
	serialPort = std::move(serialPort_);
}

void Communicator::update(std::chrono::milliseconds timeout)
{
	if(!isOpen()) {
		return;
	}

	if(serialPort->poll(timeout)) {
		uint8_t* data = receivedData.data();
		size_t size = readFromSerialPort(data, receivedData.size());

		if(frameReader.isDataAvailable()) {
			processFrame();
			frameReader.dropFrame();
		}

		if(!size) {
			return;
		}

		while(size > 0) {
			frameReader.read(*data);

			if(frameReader.isDataAvailable()) {
				processFrame();
				frameReader.dropFrame();
			}

			++data;
			--size;
		}
	}
}

void Communicator::processFrame()
{
	/*
	 * Packet layout
	 * id (1 byte)
	 * data
	 * crc32 (4 bytes)
	 */
	constexpr size_t idSize = 1;
	constexpr size_t crcSize = 4;

	const uint8_t* data = frameReader.data();
	size_t size = frameReader.size();

	if(size < idSize + crcSize + 1) {
		std::cerr << "Invalid data received" << std::endl;
		return;
	}

	CRC32 crc;
	for(size_t index = 0; index < size - crcSize; ++index) {
		crc.crc(data[index]);
	}

	uint32_t receivedCRC = readUInt32(data + size - crcSize);

	if(receivedCRC != crc.value()) {
		std::cerr << "CRC error, received: " << receivedCRC << ", expected: " << crc.value() << std::endl;
		return;
	}

	auto packet = std::make_unique<Packets>();
	if(packet->read(data, size - crcSize)) {
		packetQueue.push_back(std::move(packet));
	} else {
		std::cerr << "Invalid packet data received" << std::endl;
	}
}

bool Communicator::reopenSerialPort()
{
	if(serialPort) {
		serialPort->close();
		try {
			serialPort->open();
			return true;
		} catch(const std::runtime_error& error) {
			std::cerr << "Serial port error, reopen failed: " << error.what() << std::endl;
		}
	}

	return false;
}

void Communicator::sendFrame(const uint8_t* data, size_t size)
{
	serialPort->write(data, size);
}

void Communicator::writeUInt32(uint32_t value, CobsWriter& writer)
{
	writer.write(value & UINT32_C(0x000000FF));
	writer.write((value & UINT32_C(0x0000FF00)) >> 8);
	writer.write((value & UINT32_C(0x00FF0000)) >> 16);
	writer.write((value & UINT32_C(0xFF000000)) >> 24);
}

uint32_t Communicator::readUInt32(const uint8_t data[4])
{
	uint32_t value = data[0];
	value |= data[1] << UINT32_C(8);
	value |= data[2] << UINT32_C(16);
	value |= data[3] << UINT32_C(24);
	return value;
}

size_t Communicator::readFromSerialPort(uint8_t* data, size_t maxSize)
{
	try {
		return serialPort->read(data, maxSize);
	} catch(const std::runtime_error& error) {
		std::cerr << "Serial port: " << error.what() << std::endl;
		reopenSerialPort();
		return 0;
	}
}

