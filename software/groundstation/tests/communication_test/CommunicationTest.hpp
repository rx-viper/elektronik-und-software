#ifndef COMMUNICATION_TEST_HPP
#define COMMUNICATION_TEST_HPP

#include <QObject>

#include "Communicator.hpp"
#include "TCPBackend.hpp"
#include "Packets.hpp"

namespace viper
{

using packet::TestPacket1;
using packet::TestPacket2;

class CommunicationTest : public QObject
{
	Q_OBJECT
public:
	explicit CommunicationTest(QObject *parent = nullptr);
	void open();

	void processPacket(const Packets& packet);

public slots:
	void packetReceived();

private:
	std::shared_ptr<TCPBackend> backend;
	Communicator communicator;
};

}

#endif // COMMUNICATION_TEST_HPP
