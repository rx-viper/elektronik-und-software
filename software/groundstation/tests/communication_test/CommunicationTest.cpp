#include "CommunicationTest.hpp"

namespace viper
{

using packet::TestPacket1;
using packet::TestPacket2;
using packet::TestEnum;

CommunicationTest::CommunicationTest(QObject *parent) : QObject(parent)
{
	backend = std::make_shared<TCPBackend>();
	backend->setHostName("localhost");
	backend->setPort(8888);
}

void CommunicationTest::open()
{
	communicator.setBackend(backend);
	communicator.open();

	connect(&communicator, SIGNAL(packetReceived()), this, SLOT(packetReceived()));
}

void CommunicationTest::packetReceived()
{
	while(communicator.isPacketAvailable()) {
		std::unique_ptr<Packets> packet = communicator.readPacket();
		if(packet) {
			processPacket(*packet);
		}
	}
}

void CommunicationTest::processPacket(const Packets& packet)
{
	struct
	{
		void operator()(const TestPacket1& packet1) {
			std::cout << "TestPacket1 received: " << int(packet1.testArray[0])
					  << ", " << int(packet1.testArray[1]) << std::endl;
		}

		void operator()(const TestPacket2& packet2) {
			std::cout << "TestPacket2 received: " << packet2.test1
					  << ", " << int(packet2.test2) << std::endl;
		}
	} visitor;

	packet.applyVisitor(visitor);
}

}
