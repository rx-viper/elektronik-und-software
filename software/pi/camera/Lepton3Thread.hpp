#ifndef FLIR_LEPTON3_THREAD_HPP
#define FLIR_LEPTON3_THREAD_HPP

#include <thread>
#include <atomic>
#include <chrono>
#include <array>
#include <mutex>
#include <cstring>
#include <string>

#include "Lepton3.hpp"

using namespace std::chrono_literals;
using namespace std::string_literals;

class Lepton3Thread
{
public:
	using Frame = Lepton3::Frame;

	Lepton3Thread(const std::string& filePath);
	~Lepton3Thread();

	void start();
	void stop();

	const Frame& frame() const;
	std::unique_lock<std::mutex> lock() const;

	void setFileStorageEnabled(bool enabled);

	bool isFileStorageEnabled();

private:
	void run();

	Lepton3 lepton3;

	std::thread thread;
	mutable std::mutex mutex;

	std::atomic<bool> stopThread;

	bool saveToFile = false;
	std::string filePath = ".";
	unsigned activeBuffer = 0;	
	std::array<Frame, 2> frames;
};

#endif
