#include "SerialPortBackend.hpp"

#include "CommunicationExceptions.hpp"
#include "SerialPortConfigWidget.hpp"

namespace viper
{

SerialPortBackend::SerialPortBackend() : QIODeviceBackend(serialPort)
{
	serialPort.setBaudRate(SerialPortBackend::BaudRate);
	serialPort.setDataBits(SerialPortBackend::DataBits);
	serialPort.setStopBits(SerialPortBackend::StopBits);
	serialPort.setParity(SerialPortBackend::Parity);
	serialPort.setFlowControl(SerialPortBackend::FlowControl);

	connect(&serialPort, SIGNAL(readyRead()), this, SIGNAL(dataReceived()));
}

void SerialPortBackend::setPortName(const QString& name)
{
	serialPort.setPortName(name);
}

QString SerialPortBackend::getPortName() const
{
	return serialPort.portName();
}

bool SerialPortBackend::isConfigurable()
{
	return true;
}

BackendConfigWidget* SerialPortBackend::makeConfigWidget()
{
	return new SerialPortConfigWidget(*this);
}

}
