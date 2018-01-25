#include "CameraThread.hpp"
#include <signal.h>

#include "SerialPort.hpp" 
#include <termios.h>
#include <chrono>
#include <array>
#include <iostream>
#include <string>
#include <memory>
#include <atomic>

#include "Communicator.hpp"

#include "FileUtil.hpp"

using namespace std::chrono_literals;
using viper::packet::PiStatus;
using viper::packet::PiCommand;
using viper::packet::PiPackets;
using viper::packet::PiShutdown;

std::atomic<uint32_t> onboardTime;
std::atomic<uint32_t> experimentId;
auto lastCommandTime = std::chrono::high_resolution_clock::now();


// variable is written by unix signal handler, must be volatile
static volatile bool stop = false;

constexpr auto StatusTimeout = 500ms;

static bool shutdown = false;

void sigInt(int signal)
{
    stop = true;
}

static uint32_t getOnboardTime()
{
	auto now = std::chrono::high_resolution_clock::now();
	auto diff = std::chrono::duration_cast<std::chrono::milliseconds>(now - lastCommandTime);
	return (std::chrono::milliseconds(onboardTime) + diff).count();
}

static void readPackets(Communicator& communicator, CameraThread& cameraThread)
{
	static auto lastTime = std::chrono::high_resolution_clock::now();
	communicator.update(100ms);
	if(communicator.isPacketAvailable()) {
		auto packet = communicator.readPacket();
		if(packet) {
			const auto* command = packet->get<PiCommand>();
			if(command) {
				const bool enableRecording = command->recordingEnabled > 0;
				cameraThread.setFileStorageEnabled(enableRecording);
				onboardTime = command->onboardTime;
				experimentId = command->experimentId;
				lastCommandTime = std::chrono::high_resolution_clock::now();
			} else {
				const auto* shutdownPacket = packet->get<PiShutdown>();
				if(shutdownPacket) {
					shutdown = true;
					stop = true;
				}
			}
		}
	}
}

static void sendStatus(Communicator& communicator, CameraThread& cameraThread, const std::string& path)
{
	PiStatus status;
	status.recordingEnabled = cameraThread.isFileStorageEnabled();
	status.storageAvailable = availableStorage(path.c_str());
	communicator.sendPacket(status);
}

int main(int argc, char* argv[])
{
    signal(SIGINT, &sigInt);
	signal(SIGTERM, &sigInt);

	std::array<uint8_t, 4096> packetBuffer;
	
	onboardTime = 0;
	experimentId = 0;
	lastCommandTime = std::chrono::high_resolution_clock::now();

	std::string filePath = createExperimentDirectory();

	CameraThread thread{filePath};
	try {
		auto port = std::make_shared<SerialPort>("/dev/ttyAMA0", B115200);
		Communicator communicator{port};
		communicator.open();

		thread.start();

		auto lastStatus = std::chrono::high_resolution_clock::now();

		while(!stop) {
			readPackets(communicator, thread);

			auto now = std::chrono::high_resolution_clock::now();
			auto diff = std::chrono::duration_cast<std::chrono::milliseconds>(now - lastStatus);
			if(diff >= StatusTimeout) {
				lastStatus = now;
				sendStatus(communicator, thread, filePath);
			}
		}

		thread.stop();

		if(shutdown) {
			system("poweroff");
		}
	} catch(const std::exception& e) {
		std::cerr << "ERROR: " << e.what() << std::endl;
		return -1;
	}

    return 0;
}
