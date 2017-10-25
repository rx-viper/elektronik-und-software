#ifndef VIPER_TCP_BACKEND_HPP
#define VIPER_TCP_BACKEND_HPP

#include <QTcpSocket>

#include "QIODeviceBackend.hpp"

namespace viper
{

class TCPBackend : public QIODeviceBackend
{
public:
	TCPBackend();

	// CommunicationBackend interface
public:
	void open() override;

public:
	void setHostName(const QString& name);
	QString getHostName() const;

	void setPort(uint16_t port_);
	uint16_t getPort() const;

private:
	QTcpSocket socket;
	QString hostname;
	uint16_t port;
};

}

#endif // VIPER_TCP_BACKEND_HPP
