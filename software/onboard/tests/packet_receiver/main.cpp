/* main.cpp
 *
 * Copyright (C) 2017 Christopher Durand
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <xpcc/architecture/platform.hpp>
#include <Packets.hpp>

#include "../../src/Communicator.hpp"

using namespace viper::communication;
using namespace viper::packet;
using namespace viper::onboard;

/*
 * Example for xpcc hosted platform (pc) that receives packets
 * and displays them on the standart output.
 * 
 * Use this example together with the packet_sender example running on STM32 hardware
 */

struct SerialWrapperDevice
{
	static xpcc::hosted::SerialInterface* interface;
	
	static void write(const uint8_t* data, size_t size)
	{
		if(interface) {
			interface->writeBytes(data, size);
		}
	}
	
	static bool read(uint8_t& data)
	{
		if(interface && interface->bytesAvailable()) {
			return interface->read(reinterpret_cast<char&>(data));
		} else {
			return false;
		}
	}
};

xpcc::hosted::SerialInterface* SerialWrapperDevice::interface = nullptr;

int main()
{
	xpcc::hosted::SerialInterface serialPort("/dev/ttyUSB1", 115200);
	
	if (not serialPort.open()) {
		XPCC_LOG_ERROR << "Could not open port: " << serialPort.getDeviceName().c_str() << xpcc::endl;
		exit(EXIT_FAILURE);
	}


	SerialWrapperDevice::interface = &serialPort;
	
    Communicator<PiPackets, SerialWrapperDevice> communicator;

	PiCommand command;
	command.onboardTime = 1337;
	command.recordingEnabled = 0;
	communicator.sendPacket(command);

	while (1) {
        if(communicator.isPacketAvailable()) {
			const PiPackets& packetGroup = communicator.getPacket();
			
			const PiStatus* packet2 = packetGroup.get<PiStatus>();
			if(packet2) {
				std::cout << (int)packet2->recordingEnabled << ", " << packet2->storageAvailable << std::endl;
			}
			communicator.dropPacket();
		}
		
        communicator.update();
	}

	return 0;
}

