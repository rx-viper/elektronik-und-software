#include "SerialPortConfigWidget.hpp"

#include "SerialPortBackend.hpp"

#include <QSerialPortInfo>

SerialPortConfigWidget::SerialPortConfigWidget(SerialPortBackend& backend_, QWidget* parent) :
	backend{backend_}, BackendConfigWidget{parent}
{
	setupUi(this);
	QList<QSerialPortInfo> availablePorts = QSerialPortInfo::availablePorts();

	for(const QSerialPortInfo& info : availablePorts) {
		portBox->addItem(info.systemLocation());
	}
	portBox->setCurrentIndex(0);
}


void SerialPortConfigWidget::applyConfig()
{
	backend.setPortName(portBox->currentText());
}

void SerialPortConfigWidget::reloadSavedSettings()
{
}
