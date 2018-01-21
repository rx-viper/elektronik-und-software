#include <cerrno>
#include <system_error>
#include <unistd.h>
#include <iostream>
#include <sys/time.h>
#include <sys/resource.h>

#include "Lepton3.hpp"

Lepton3::Lepton3()
{
}

Lepton3::~Lepton3()
{
	close();
}

void Lepton3::open(const std::string& device, uint32_t frequency)
{
	close();

	stop = false;
	activeBuffer = 0;
	frameAvailable = false;

	fd = ::open(device.c_str(), O_RDWR);
	if (fd < 0) {
		throw std::system_error(errno, std::generic_category(), "can't open device");
	}

	mode = 0;
	int ret = ioctl(fd, SPI_IOC_WR_MODE, &mode);
	if (ret == -1) {
		throw std::system_error(errno, std::generic_category(), "can't set spi mode");
	}

	ret = ioctl(fd, SPI_IOC_RD_MODE, &mode);
	if (ret == -1) {
		throw std::system_error(errno, std::generic_category(), "can't get spi mode");
	}

	bits = 8;
	ret = ioctl(fd, SPI_IOC_WR_BITS_PER_WORD, &bits);
	if (ret == -1) {
		throw std::system_error(errno, std::generic_category(), "can't set bits per word");
	}

	ret = ioctl(fd, SPI_IOC_RD_BITS_PER_WORD, &bits);
	if (ret == -1) {
		throw std::system_error(errno, std::generic_category(), "can't get bits per word");
	}

	speed = frequency;
	ret = ioctl(fd, SPI_IOC_WR_MAX_SPEED_HZ, &speed);
	if (ret == -1) {
		throw std::system_error(errno, std::generic_category(), "can't set max speed hz");
	}

	ret = ioctl(fd, SPI_IOC_RD_MAX_SPEED_HZ, &speed);
	if (ret == -1) {
		throw std::system_error(errno, std::generic_category(), "can't get max speed hz");
	}

	transfer.delay_usecs = 0;
	transfer.speed_hz = speed;
	transfer.bits_per_word = bits;

	desynchronized = true;

	thread = std::thread(std::bind(&Lepton3::readThread, this));
}

void Lepton3::close()
{
	stop = true;
	if(thread.joinable()) {
		thread.join();
	}

	if(fd > 0) {
		::close(fd);
		fd = -1;
	}
}

bool Lepton3::readFrame(Frame& frame, bool blocking)
{
	std::unique_lock<std::mutex> lock{mutex};

	auto copyPacket = [&](){
		auto& buffer = frameBuffers[activeBuffer ^ 1].data;
		std::copy(buffer.begin(), buffer.end(), frame.data.begin());
		frameAvailable  = false;
	};

	if(frameAvailable) {
		copyPacket();
		return true;
	}

	if(blocking) {
		if(cv.wait_for(lock, 1000ms, [this](){ return frameAvailable; })) {
			copyPacket();
			return true;
		}
	}

	return false;
}

void Lepton3::readThread()
{
	setpriority(PRIO_PROCESS, 0, -20);
	try{
		desynchronized = true;

		while(!stop) {
			if(desynchronized) {
				std::cout << "SYNC" << std::endl;
				synchronize();

				segmentIndex = 0;
//				lastPacketNumber = 0xFF;
				ignoreSegment = true;

				continue;
			}

			processPacket();
			spiTransfer();
		}
	} catch(std::exception& e) {
		std::cerr << "ERROR" << e.what() << std::endl;
	}
}

void Lepton3::processPacket()
{
	static uint discardCounter = 0;

	if(spiPacket.isDiscardPacket()) {
		if(discardCounter++ > 60) {
			desynchronized = true;
			discardCounter = 0;
			std::cerr << "RESYNC" << std::endl;
		}
		return;
	} else {
		discardCounter = 0;
	}

	uint8_t packetNumber{spiPacket.packetNumber()};

	if(packetNumber != 0 && (packetNumber != ((lastPacketNumber + 1) % SegmentBuffer::PacketCount) || packetNumber > 59)) {
		desynchronized = true;
		//lastPacketNumber = 59;
		//if(packetNumber != ((lastPacketNumber + 1) % SegmentBuffer::PacketCount))
		//std::cout << "AA:" << (int)packetNumber << ":" << (int)((lastPacketNumber + 1) % SegmentBuffer::PacketCount) << std::endl;
		return;
	}

	const auto* receivedData = spiPacket.payload();
	auto* segmentData = segmentBuffer.packetData(packetNumber);

	std::copy(receivedData, receivedData + SpiPacket::DataSize, segmentData);

	// only packet 20 contains a valid segment number
	if(packetNumber == 20) {
		ignoreSegment = (isValidSegment(segmentIndex) && spiPacket.segmentNumber() != segmentIndex + 1) ||
			(!isValidSegment(segmentIndex) && spiPacket.segmentNumber() != 1);
		//if(spiPacket.segmentNumber() == 4)
		//	std::cout << "AA:" << (int)spiPacket.segmentNumber() << ":" << (int)segmentIndex << std::endl;
		segmentIndex = spiPacket.segmentNumber();
	}

	// last packet
	if(packetNumber == 59) {
		// copy segment to frame buffer
		if(!ignoreSegment) {
			std::unique_lock<std::mutex> lock(mutex);
			segmentBuffer.copyToFrame(frameBuffers[activeBuffer], segmentIndex);
			if(segmentIndex == 4) {
				activeBuffer ^= 1;
				frameAvailable = true;
				lock.unlock();
				cv.notify_one();
			}
		}
	}

	lastPacketNumber = packetNumber;
}

void Lepton3::synchronize()
{
	std::this_thread::sleep_for(200ms);

	do
	{
		spiTransfer();
	} while(spiPacket.isDiscardPacket() && !stop);

	desynchronized = spiPacket.isDiscardPacket();
}

void Lepton3::spiTransfer()
{
	uint8_t dummyTx[SpiPacket::Size];
	
	transfer.tx_buf = (unsigned long) dummyTx;
	transfer.rx_buf = (unsigned long) &spiPacket.data[0];
	transfer.len = SpiPacket::Size;
	transfer.delay_usecs = 0;
	transfer.speed_hz = speed;
	transfer.bits_per_word = bits;

	int ret = ioctl(fd, SPI_IOC_MESSAGE(1), &transfer);
	
	// TODO: error handling
	/*if (ret < 1)
		pabort("can't send spi message");*/
}

void Lepton3::SegmentBuffer::copyToFrame(Frame& destination, uint8_t segmentIndex)
{
	if(segmentIndex == 0 || segmentIndex > 4) {
		return;
	}

	uint16_t* frameData = &destination.data[0] + ((segmentIndex-1) * Size / 2);
	for(size_t index = 0; index < Size; index += 2) {
		frameData[index / 2] = (data[index + 0] << 8) | data[index + 1];
	}

	//std::memcpy(reinterpret_cast<uint8_t*>(&destination.data[0]) + (segmentIndex-1) * Size, &data[0], Size);
}
