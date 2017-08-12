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
#include <boost/asio.hpp>

#include "../../src/Communicator.hpp"

using namespace viper::communication;
using namespace viper::packet;
using namespace viper::onboard;

using boost::asio::ip::tcp;

struct SocketWrapper
{
	static tcp::socket* socket;
	
	static void write(const uint8_t* data, size_t size)
	{
		if(socket) {
			boost::system::error_code ignored_error;
			boost::asio::write(*socket, boost::asio::buffer(data, size), ignored_error);
			XPCC_LOG_INFO << "write, size: " << size << xpcc::endl;
		}
	}
	
	static bool read(uint8_t& data)
	{
		// this example does not support reading
		return false;
	}
};

tcp::socket* SocketWrapper::socket = nullptr;

int main()
{

	try
	{
		boost::asio::io_service io_service;

		tcp::acceptor acceptor(io_service, tcp::endpoint(tcp::v4(), 8888));

		for (;;)
		{
			XPCC_LOG_INFO << "Connected" << xpcc::endl;
			Communicator<TestPackets, SocketWrapper> communicator;

			tcp::socket socket(io_service);
			acceptor.accept(socket);

			SocketWrapper::socket = &socket;
			
			TestPacket1 packet1;
			packet1.testArray[0] = TestEnum::Enum2;
			packet1.testArray[1] = TestEnum::Enum0;

			TestPacket2 packet2;
			packet2.test1 = 42;
			packet2.test2 = TestEnum::Enum1;
			
			communicator.sendPacket(packet1);
			communicator.sendPacket(packet2);
		}
	}
	catch (std::exception& e)
	{
		std::cerr << e.what() << std::endl;
	}

	return 0;
}

