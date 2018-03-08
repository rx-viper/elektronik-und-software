#include "Application.hpp"
#include <array>

Q_DECLARE_METATYPE(uint32_t)
Q_DECLARE_METATYPE(uint16_t)
Q_DECLARE_METATYPE(uint8_t)

int main(int argc, char *argv[])
{
	qRegisterMetaType<uint32_t>("uint32_t");
	qRegisterMetaType<uint16_t>("uint16_t");
	qRegisterMetaType<uint8_t>("uint8_t");

	const QString& host = "::1";
	const QString& user = "viper";
	const QString& password = "viper";
	const QString& database = "viper";
	QSqlDatabase qdb = QSqlDatabase::addDatabase("QPSQL");
	qdb.setHostName(host);
	qdb.setUserName(user);
	qdb.setPassword(password);
	qdb.setDatabaseName(database);

	viper::Application app(argc, argv, qdb);
	app.showMainWindow();

	return app.exec();
}
