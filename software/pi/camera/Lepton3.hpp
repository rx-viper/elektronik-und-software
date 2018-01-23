#ifndef FLIR_LEPTON3_HPP
#define FLIR_LEPTON3_HPP

#include <thread>
#include <atomic>
#include <chrono>
#include <array>
#include <mutex>
#include <condition_variable>
#include <sys/ioctl.h>
#include <linux/types.h>
#include <linux/spi/spidev.h>
#include <fcntl.h>
#include <cstring>

using namespace std::chrono_literals;

class Lepton3
{
public:
	struct Frame
	{
		static constexpr size_t width = 160;
		static constexpr size_t height = 120;

		std::array<uint16_t, width * height> data;
	};

	Lepton3();
	~Lepton3();

	void open(const std::string& device, uint32_t frequency = 20'000'000);
	void close();

	bool readFrame(Frame& frame, bool blocking = true);

private:
	struct SpiPacket {
		static constexpr size_t Size = 164;
		static constexpr size_t HeaderSize = 4;
		static constexpr size_t DataSize = Size - HeaderSize;

		std::array<uint8_t, Size> data;

		bool isDiscardPacket() { return (data[0] & 0xF) == 0xF; }
		uint8_t packetNumber() { return data[1]; }

		// only valid if packet number is 20
		uint8_t segmentNumber() { return ((data[0] & 0b01110000) >> 4); }
		uint8_t* payload() { return data.data() + HeaderSize; }
	} spiPacket;

	struct SegmentBuffer {
		static constexpr size_t PacketCount = 60;
		static constexpr size_t Size = SpiPacket::DataSize * PacketCount;

		std::array<uint8_t, Size> data;

		uint8_t* packetData(uint8_t packetIndex) { return &data[packetIndex * SpiPacket::DataSize]; }

		void copyToFrame(Frame& destination, uint8_t segmentIndex);
	} segmentBuffer;

	void readThread();

	void processPacket();

	void spiTransfer();

	void synchronize();

	static bool isValidSegment(uint8_t number) { return number > 0 && number <= 4; }

	int fd = -1;
	struct spi_ioc_transfer transfer;
	std::thread thread;
	std::mutex mutex;
	std::condition_variable cv;

	std::atomic<bool> stop;

	uint8_t activeBuffer = 0;

	bool frameAvailable = false;

	bool desynchronized = true;
	uint8_t mode = 0;
	uint8_t bits = 8;
	uint32_t speed = 0;
	
	std::array<Frame, 2> frameBuffers;

	uint8_t segmentIndex = 0;
	uint8_t lastPacketNumber = SegmentBuffer::PacketCount;
	bool ignoreSegment = false;
};

#endif
