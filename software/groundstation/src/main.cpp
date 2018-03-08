#include "Application.hpp"

int main(int argc, char *argv[])
{
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
