#include "TCPBackend.hpp"

#include "CommunicationExceptions.hpp"

namespace viper
{

TCPBackend::TCPBackend() : QIODeviceBackend(socket)
{
	connect(&ioDevice, SIGNAL(readyRead()), this, SIGNAL(dataReceived()));
}

void TCPBackend::open()
{
	socket.connectToHost(hostname, port);
	if(!socket.waitForConnected(1000)) {
		throw CommunicationIOError{socket.errorString()};
	}
}

void TCPBackend::setHostName(const QString& name)
{
	hostname = name;
}

QString TCPBackend::getHostName() const
{
	return hostname;
}

void TCPBackend::setPort(uint16_t port_)
{
	port = port_;
}

uint16_t TCPBackend::getPort() const
{
	return port;
}

}
