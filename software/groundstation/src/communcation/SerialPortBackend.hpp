#ifndef VIPER_SERIAL_PORT_BACKEND_HPP
#define VIPER_SERIAL_PORT_BACKEND_HPP

#include <QtSerialPort>

#include "CommunicationBackend.hpp"
#include "QIODeviceBackend.hpp"

namespace viper
{

class SerialPortBackend : public QIODeviceBackend
{
public:
	//static constexpr auto BaudRate    = QSerialPort::Baud38400;
	static constexpr auto BaudRate    = QSerialPort::Baud115200;
	static constexpr auto DataBits    = QSerialPort::Data8;
	static constexpr auto StopBits    = QSerialPort::OneStop;
	static constexpr auto Parity      = QSerialPort::NoParity;
	static constexpr auto FlowControl = QSerialPort::NoFlowControl;

	SerialPortBackend();

	void setPortName(const QString& name);
	QString getPortName() const;
private:
	QSerialPort serialPort;

	// CommunicationBackend interface
public:
	bool isConfigurable() override;
	BackendConfigWidget*makeConfigWidget() override;
};

}

#endif // VIPER_SERIAL_PORT_BACKEND_HPP
