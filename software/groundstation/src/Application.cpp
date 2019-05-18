#include "Application.hpp"

#include "Packets.hpp"

namespace viper
{

Application::Application(int& argc, char** argv, QSqlDatabase& qdb)
	: QApplication{argc, argv}, packetDispatcher{*this}, backendConfigWidget{nullptr}, db{qdb}, packetDatabaseWriter{this->db}
{
	guiUpdateTimer.setSingleShot(false);
	guiUpdateTimer.start(20);
	connect(&guiUpdateTimer, SIGNAL(timeout()), this, SLOT(updateGUI()));
	connect(&mainWindow, SIGNAL(connectSerialClicked()), this, SLOT(connectSerialButtonClicked()));
	connect(&mainWindow, SIGNAL(connectDbClicked()), this, SLOT(connectDbButtonClicked()));
	connect(&mainWindow, SIGNAL(testOnClicked()), this, SLOT(testOnButtonClicked()));
	connect(&mainWindow, SIGNAL(testOffClicked()), this, SLOT(testOffButtonClicked()));

	connect(&mainWindow, SIGNAL(closeWindow()), &iceTempWindow, SLOT(close()));

	connect(&communicator, SIGNAL(logRawData(QByteArray,QDateTime)), &db, SLOT(logRawData(QByteArray,QDateTime)));

	// TODO: remove hardcoded static backend
	backend = std::make_shared<SerialPortBackend>();

	if(backend->isConfigurable()) {
		backendConfigWidget = backend->makeConfigWidget();
		mainWindow.setBackendConfigWidget(backendConfigWidget);
	}

	communicator.setBackend(backend);

	connect(&communicator, SIGNAL(packetReceived()), this, SLOT(packetReceived()));

	/*packet::HpPenetrationDepthHS depth;
	depth.depth = {{56,-6, 19}};
	processPacket(depth);

	packet::HpTemperatureLS temp;
	temp.temperatures = {{111, 73, 33}};
	processPacket(temp);

	packet::IceTemperatureHS iceTemp;
	iceTemp.temperatures = std::array<int32_t,27>{-20,-30,-40,3,-27,-33, -10, -29, -34 , -32, -20,-30,-40,3,-27,-33, -10, -29, -34 , -32, -20,-30,15,15,15,15, 15};
	processPacket(iceTemp);

	packet::PressureHS pressure;
	pressure.values.at(19) = 123;
	processPacket(pressure);

	packet::OtherTemperatureHS otherTemp;
	otherTemp.temperatures = {{20, 30, 40, 50, 60}};
	processPacket(otherTemp);*/

}

ExperimentStatus& Application::experimentStatus()
{
	return status;
}

void Application::showMainWindow()
{
	mainWindow.show();
	iceTempWindow.show();
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
	packet.applyVisitor(packetDatabaseWriter);
}

void Application::updateGUI()
{
	mainWindow.updateUI(status);
	iceTempWindow.updateUI(status);
}

void Application::connectSerialButtonClicked()
{
	if(!backend) {
		return;
	}

	if(communicator.isOpen()) {
		communicator.close();
		mainWindow.setSerialConnected(false);
	} else {
		try {
			if(backendConfigWidget) {
				backendConfigWidget->applyConfig();
			}

			communicator.open();
		} catch (const std::runtime_error& err) {
			QMessageBox::critical(&mainWindow, "Opening backend failed",  err.what());
		}
		mainWindow.setSerialConnected(communicator.isOpen());
	}
}

void Application::connectDbButtonClicked()
{
	if(!db.isOpen()) {
		if(!db.open()) {
			QMessageBox::critical(&mainWindow, "Database Error",  "Unable to connect to Database. Is the database up and running?");
		}
		mainWindow.setDbConnected(true);
	}
	else {
		QStringList errors = db.getErrors();
		for(int i = 0; i < errors.size(); i++) {
			std::cout << "[DB error] " << errors.at(i).toLocal8Bit().constData() << std::endl;
		}
	}
}

void Application::testOnButtonClicked()
{
	viper::packet::TestMode testMode;
	testMode.enabled = 1;
	communicator.sendPacket(testMode);
}

void Application::testOffButtonClicked()
{
	viper::packet::TestMode testMode;
	testMode.enabled = 0;

	communicator.sendPacket(testMode);
}

}
