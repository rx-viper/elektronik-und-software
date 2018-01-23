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
#include <xpcc/processing/timer.hpp>
#include <random>

#include <Packets.hpp>

#include "../../src/Communicator.hpp"

using namespace Board;

using viper::onboard::Communicator;

using viper::packet::PiPackets;
using viper::packet::PiStatus;

/*
 * Example for STM32F746G discovery board that sends packets with simulated bit errors.
 * To run this on other hardware you will need to change the project settings in project.cfg
 */
using UartDevice = Board::stlink::Uart;

int main()
{
	Board::initialize();
	LedD13::setOutput();
	xpcc::PeriodicTimer timer(100);
	
    Communicator<PiPackets, UartDevice> communicator;
	uint32_t testInt = 0;

	while (1) {
		// drop all received packets
        if(communicator.isPacketAvailable()) {
			LedD13::toggle();
			communicator.dropPacket();
        }

        // send packet every 10 ms
        if(timer.execute()) {
			PiStatus packet;

			packet.recordingEnabled = testInt++ % 0xFF;

			communicator.sendPacket(packet);
		}
		
        communicator.update();
	}

	return 0;
}
