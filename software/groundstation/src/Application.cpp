#include "Application.hpp"

#include "Packets.hpp"

namespace viper
{

Application::Application(int& argc, char** argv)
	: QApplication{argc, argv}, packetDispatcher{*this}, backendConfigWidget{nullptr}
{
	guiUpdateTimer.setSingleShot(false);
	guiUpdateTimer.start(20);
	connect(&guiUpdateTimer, SIGNAL(timeout()), this, SLOT(updateGUI()));
	connect(&mainWindow, SIGNAL(connectClicked()), this, SLOT(connectButtonClicked()));

	// TODO: remove hardcoded static backend
	backend = std::make_shared<SerialPortBackend>();

	if(backend->isConfigurable()) {
		backendConfigWidget = backend->makeConfigWidget();
		mainWindow.setBackendConfigWidget(backendConfigWidget);
	}

	communicator.setBackend(backend);

	connect(&communicator, SIGNAL(packetReceived()), this, SLOT(packetReceived()));

	packet::HpPenetrationDepthHS depth;
	depth.depth = {56,-6, 19};

	packet::GroundstationPackets p;
	p = std::move(depth);
	processPacket(p);

	packet::HpTemperatureLS temp;
	temp.temperatures = {111, 73, 33};
	p = std::move(temp);
	processPacket(p);

	packet::IceTemperatureHS iceTemp;
	iceTemp.temperatures = std::array<int32_t,27>{-20,-30,-40,3,-27,-33, -10, -29, -34 , -32, -20,-30,-40,3,-27,-33, -10, -29, -34 , -32, -20,-30,15,15,15,15, 15};
	p = std::move(iceTemp);
	processPacket(p);

	packet::PressureHS pressure;
	pressure.values.at(19) = 123;
	p = std::move(pressure);
	processPacket(p);
}

ExperimentStatus& Application::experimentStatus()
{
	return status;
}

void Application::showMainWindow()
{
	mainWindow.show();
}

void Application::packetReceived()
{
	while(communicator.isPacketAvailable()) {
		std::unique_ptr<Packets> packet = communicator.readPacket();
		if(packet) {
			processPacket(*packet);
		}
	}
}

void Application::processPacket(const packet::GroundstationPackets& packet)
{
	packet.applyVisitor(packetDispatcher);
}

void Application::updateGUI()
{
	mainWindow.updateUI(status);
}

void Application::connectButtonClicked()
{
	if(!backend) {
		return;
	}

	if(communicator.isOpen()) {
		communicator.close();
		mainWindow.setConnected(false);
	} else {
		try {
			if(backendConfigWidget) {
				backendConfigWidget->applyConfig();
			}

			communicator.open();
		} catch (const std::runtime_error& err) {
			QMessageBox::critical(&mainWindow, "Opening backend failed",  err.what());
		}
		mainWindow.setConnected(communicator.isOpen());
	}
}

}
