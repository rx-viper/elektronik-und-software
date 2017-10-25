#include <QCoreApplication>

#include <signal.h>

#include "CommunicationTest.hpp"
#include "CommunicationExceptions.hpp"

void exit_func(int signal)
{
	Q_UNUSED(signal);

	std::exit(0);
}

int main(int argc, char *argv[])
{
	// Exit on ctrl+c
	signal(SIGINT, exit_func);

	QCoreApplication app(argc, argv);

	std::cout << "Packet test, listening on localhost, port 8888" << std::endl;
	try {
		viper::CommunicationTest test;
		test.open();
		return app.exec();
	} catch(viper::CommunicationError& err) {
		std::cerr << err.what() << std::endl;
		return -1;
	}
}
