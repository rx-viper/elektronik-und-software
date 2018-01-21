#include "Lepton3Thread.hpp"

#include <iostream>
#include <sys/time.h>
#include <sys/resource.h>
#include <fstream>

#include <snappy.h>
#include "FileUtil.hpp"

Lepton3Thread::Lepton3Thread(const std::string& filePath_) : filePath(filePath_)
{
	frames[0].data.fill(0);
	frames[1].data.fill(0);
}

Lepton3Thread::~Lepton3Thread()
{
	stop();
}

void Lepton3Thread::start()
{
	stop();
	std::unique_lock<std::mutex> lock{mutex};

	frames[0].data.fill(0);
	frames[1].data.fill(0);

	lepton3.open("/dev/spidev0.0", 20'000'000);

	stopThread = false;

	thread = std::thread(std::bind(&Lepton3Thread::run, this));
}

void Lepton3Thread::stop()
{
	std::unique_lock<std::mutex> lock{mutex};
	if(thread.joinable()) {
		stopThread = true;
		lock.unlock();
		thread.join();
		lock.lock();
		lepton3.close();
		thread = std::thread{};
	}
}

const Lepton3Thread::Frame& Lepton3Thread::frame() const
{
//	std::lock_guard<std::mutex> lock{mutex};
	return frames[activeBuffer ^ 1];
}

std::unique_lock<std::mutex> Lepton3Thread::lock() const
{
	return std::unique_lock<std::mutex>{mutex};
}

void Lepton3Thread::setFileStorageEnabled(bool enabled)
{
	std::lock_guard<std::mutex> lock{mutex};
	saveToFile = enabled;
}

bool Lepton3Thread::isFileStorageEnabled()
{
	std::lock_guard<std::mutex> lock{mutex};
	return saveToFile;
}

void Lepton3Thread::run()
{	
	setpriority(PRIO_PROCESS, 0, -19);
	std::unique_lock<std::mutex> lock{mutex, std::defer_lock};

	std::string compressedData;
	while(!stopThread) {
		lock.lock();
		unsigned bufferIndex = activeBuffer;
		lock.unlock();

		if(!lepton3.readFrame(frames[bufferIndex])) {
			std::cerr << "Lepton3 TIMEOUT" << std::endl;
		}

		lock.lock();
		activeBuffer ^= 1;
		lock.unlock();

		auto s = snappy::Compress((const char*)frames[bufferIndex].data.data(), frames[bufferIndex].data.size() * sizeof(uint16_t), &compressedData);


		// TODO: save to file
		if(saveToFile || true) {
			std::string filename = nextFilename("data/Lepton_", ".compressed");
			std::ofstream file(filename, std::ofstream::binary);
			file.write(compressedData.data(), compressedData.size());

		}
	}
}
