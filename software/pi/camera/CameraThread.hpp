#ifndef CAMERA_THREAD_HPP
#define CAMERA_THREAD_HPP

#include <thread>
#include <atomic>
#include <chrono>
#include <array>
#include <mutex>
#include <cstring>
#include <string>
#include <iostream>

#include "Lepton3Thread.hpp"
#include "FramebufferRenderer.hpp"
#include "IdsCamera.hpp"
#include "JpegEncoder.hpp"
#include "SwScale.hpp"

using namespace std::chrono_literals;
using namespace std::string_literals;

class CameraThread
{
public:
	~CameraThread() { stop(); }

	void start();
	void stop();

	void setFileStorageEnabled(bool enabled);
	void isFileStorageEnabled(bool enabled);
	
private:
	void run();

	std::thread thread;
	std::atomic<bool> stopThread;

	FramebufferRenderer fbRenderer;
	FramebufferRenderer::Size fbSize;
	std::vector<uint32_t> fbCameraImage;

	IdsCamera camera;
	std::vector<uint8_t> cameraImage;
	std::unique_ptr<JpegEncoder> jpegEncoder;
	const int jpegQuality = 75;
	std::unique_ptr<SwScale> cameraScaler;

	Lepton3Thread leptonThread;

	std::atomic<bool> storageEnabled;
};


	/*using Frame = Lepton3::Frame;

	Lepton3Thread();
	Lepton3Thread(const std::string& filePath = "."s);
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
};*/

#endif
