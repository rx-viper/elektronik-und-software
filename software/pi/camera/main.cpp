#include "CameraThread.hpp"
#include <signal.h>

// variable is written by unix signal handler, must be volatile
static volatile bool stop = false;

void sigInt(int signal)
{
    stop = true;
}

int main(int argc, char* argv[])
{
    signal(SIGINT, &sigInt);

	CameraThread thread;

    try
    {
		thread.start();

		while(!stop) {
			sleep(1);
		}

		thread.stop();
	} catch(const std::exception& e) {
		std::cerr << "Error: " << e.what() << std::endl;
	}
	
    return 0;
}
