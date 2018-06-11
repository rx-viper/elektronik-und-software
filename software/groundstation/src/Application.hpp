#ifndef APPLICATION_HPP
#define APPLICATION_HPP

#include <QObject>
#include <QApplication>
#include <QTimer>

#include "communcation/Communicator.hpp"
#include "communcation/SerialPortBackend.hpp"
#include "PacketDispatcher.hpp"
#include "PacketDatabaseWriter.hpp"
#include "ExperimentStatus.hpp"
#include "mainwindow.h"
#include "IceTemperatureWindow.hpp"
#include "StorageDatabase.hpp"

#include <memory>

using viper::packet::GroundstationPackets;

namespace viper
{

class Application : public QApplication
{
	Q_OBJECT
public:
	explicit Application(int& argc, char** argv, QSqlDatabase& qdb);

	ExperimentStatus& experimentStatus();

	void showMainWindow();
signals:

public slots:

private slots:
	void packetReceived();
	void processPacket(const GroundstationPackets& packet);
	void updateGUI();
	void connectSerialButtonClicked();
	void connectDbButtonClicked();
	void testOnButtonClicked();
	void testOffButtonClicked();

private:
	Communicator communicator;
	PacketDispatcher packetDispatcher;
	ExperimentStatus status;
	MainWindow mainWindow;
	IceTemperatureWindow iceTempWindow;
	QTimer guiUpdateTimer;

	std::shared_ptr<CommunicationBackend> backend;
	BackendConfigWidget* backendConfigWidget;

	StorageDatabase db;
	PacketDatabaseWriter packetDatabaseWriter;
};

}

#endif // APPLICATION_HPP
