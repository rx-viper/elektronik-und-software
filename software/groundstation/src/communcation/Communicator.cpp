#include "Communicator.hpp"

#include <iostream>

#include "Packets.hpp"

namespace viper
{

using communication::CRC32;
using communication::CobsWriter;

Communicator::Communicator() : sendSequenceNumbers{}, frameReader{frameInBuffer.data(), frameInBuffer.size()},
	frameWriter{frameOutBuffer.data(), frameOutBuffer.size()}
{
}

Communicator::Communicator(std::shared_ptr<CommunicationBackend> backend_)
	: sendSequenceNumbers{},
	  backend{std::move(backend_)},
	  frameReader{frameInBuffer.data(), frameInBuffer.size()},
	  frameWriter{frameOutBuffer.data(), frameOutBuffer.size()}
{
}

void Communicator::open()
{
	if(!backend) {
		throw CommunicationError{std::string{"backend is nullptr"}};
	}

	backend->open();
	QObject::connect(backend.get(), SIGNAL(dataReceived()), this, SLOT(dataReceived()));
}

void Communicator::close() noexcept
{
	QObject::disconnect(this, SLOT(dataReceived()));
	if(backend && backend->isOpen()) {
		backend->close();
	}
}

bool Communicator::isOpen() const noexcept
{
	if(!backend) {
		return false;
	}

	return backend->isOpen();
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
	backend = nullptr;
}

void Communicator::setBackend(std::shared_ptr<CommunicationBackend> backend_)
{
	close();
	this->backend = std::move(backend_);
}

void Communicator::dataReceived()
{
	if(!isOpen()) {
		return;
	}

	while(backend->isDataAvailable()) {
		uint8_t* data = receivedData.data();
		size_t size = readFromBackend(data, receivedData.size());
		emit logRawData(QByteArray(reinterpret_cast<char*>(data), size), QDateTime::currentDateTime());

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
		std::cerr << "CRC error" << std::endl;
		return;
	}

	auto packet = std::make_unique<Packets>();
	if(packet->read(data, size - crcSize)) {
		packetQueue.push_back(std::move(packet));
		emit packetReceived();
	} else {
		std::cerr << "Invalid packet data received" << std::endl;
	}
}

bool Communicator::reopenBackend()
{
	if(backend) {
		backend->close();
		try {
			backend->open();
			return true;
		} catch(const CommunicationError& error) {
			std::cerr << "Backend error, reopen failed: " << error.what() << std::endl;
		}
	}

	return false;
}

void Communicator::sendFrame(const uint8_t* data, size_t size)
{
	bool nothingWritten = false;
	while(size > 0) {
		const auto bytesWritten = backend->write(data, size);

		// retry once if no bytes have been written
		if(bytesWritten == 0) {
			if(nothingWritten) {
				throw CommunicationError{std::string{"sending packet failed"}};
			}
			nothingWritten = true;
		} else {
			nothingWritten = false;
		}

		data += bytesWritten;
		size -= bytesWritten;
	}
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

size_t Communicator::readFromBackend(uint8_t* data, size_t maxSize)
{
	try {
		return backend->read(data, maxSize);
	} catch(const std::runtime_error& error) {
		std::cerr << "Backend error: " << error.what() << std::endl;
		reopenBackend();
		return 0;
	}
}

}

