#include "Application.hpp"
#include <array>

Q_DECLARE_METATYPE(uint32_t)
Q_DECLARE_METATYPE(uint16_t)
Q_DECLARE_METATYPE(uint8_t)

using IceArray = std::array<int32_t, 27>;
Q_DECLARE_METATYPE(IceArray)

using DepthArray = std::array<int32_t, 3>;
Q_DECLARE_METATYPE(DepthArray)

using  PressureLSArray = std::array<uint16_t, 5>;
Q_DECLARE_METATYPE(PressureLSArray)

using  PressureHSArray = std::array<uint16_t, 20>;
Q_DECLARE_METATYPE(PressureHSArray)

using HpPowerHSArray = std::array<uint16_t, 3>;
Q_DECLARE_METATYPE(HpPowerHSArray)

using BatVoltageHSArray = std::array<uint16_t, 4>;
Q_DECLARE_METATYPE(BatVoltageHSArray)

int main(int argc, char *argv[])
{
	qRegisterMetaType<uint32_t>("uint32_t");
	qRegisterMetaType<uint16_t>("uint16_t");
	qRegisterMetaType<uint8_t>("uint8_t");
	qRegisterMetaType<std::array<int32_t, 3>>("std::array<int32_t, 3>");
	qRegisterMetaType<std::array<uint16_t, 5>>("std::array<uint16_t, 5>");
	qRegisterMetaType<std::array<uint16_t, 20>>("std::array<uint16_t, 20>");
	qRegisterMetaType<std::array<uint16_t, 3>>("std::array<uint16_t, 3>");
	qRegisterMetaType<std::array<uint16_t, 4>>("std::array<uint16_t, 4>");

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
