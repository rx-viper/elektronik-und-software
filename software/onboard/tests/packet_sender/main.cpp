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

using viper::packet::TestPackets;
using viper::packet::TestPacket2;
using viper::packet::TestEnum;

/*
 * Example for STM32F746G discovery board that sends packets with simulated bit errors.
 * To run this on other hardware you will need to change the project settings in project.cfg
 */
using UartDevice = Board::stlink::Uart;
constexpr uint32_t BitErrorRate = 2; // in units of 10^-4

// initialize random number generator with a value range of [0, 10000]
std::default_random_engine random(42);
std::uniform_int_distribution<uint32_t> uniformDist(0, 10000);

/// Uart device wrapper to simulate transmission errors
template<typename Uart>
struct ErrorUart
{
	static void write(const uint8_t* data, size_t size)
	{
		for(size_t i = 0; i < size; ++i) {
			uint8_t byte = data[i];
			for(uint8_t bit = 0; bit < 8; ++bit) {
				const bool isError = uniformDist(random) < BitErrorRate;
				if(isError)
					byte ^= (1 << bit);
			}
			Uart::write(byte);
		}
	}
	
	inline static bool read(uint8_t& data)
	{
		return Uart::read(data);
	}
};

using TestCommunicator = Communicator<TestPackets, ErrorUart<UartDevice>>;

int main()
{
	Board::initialize();
	LedD13::setOutput();
	xpcc::PeriodicTimer timer(10);
	
    TestCommunicator communicator;
	uint32_t testInt = 0;

	while (1) {
		// drop all received packets
        if(communicator.isPacketAvailable()) {
			LedD13::toggle();
			communicator.dropPacket();
        }

        // send packet every 10 ms
        if(timer.execute()) {
			TestPacket2 packet2;

			packet2.test1 = testInt++;
			packet2.test2 = testInt % 2 ? TestEnum::Enum1 : TestEnum::Enum2;

			communicator.sendPacket(packet2);
		}
		
        communicator.update();
	}

	return 0;
}
