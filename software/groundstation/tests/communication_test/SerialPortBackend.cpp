#include "SerialPortBackend.hpp"

#include "CommunicationExceptions.hpp"

namespace viper
{

SerialPortBackend::SerialPortBackend() : QIODeviceBackend(serialPort)
{
	serialPort.setBaudRate(SerialPortBackend::BaudRate);
	serialPort.setDataBits(SerialPortBackend::DataBits);
	serialPort.setStopBits(SerialPortBackend::StopBits);
	serialPort.setParity(SerialPortBackend::Parity);
	serialPort.setFlowControl(SerialPortBackend::FlowControl);

	connect(&serialPort, SIGNAL(dataReceived()), this, SLOT(dataReceived()));
}

void SerialPortBackend::setPortName(const QString& name)
{
	serialPort.setPortName(name);
}

QString SerialPortBackend::getPortName() const
{
	return serialPort.portName();
}

}
