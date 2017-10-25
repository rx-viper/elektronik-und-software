#include "Application.hpp"

int main(int argc, char *argv[])
{
	viper::Application app(argc, argv);
	app.showMainWindow();

	return app.exec();
}
