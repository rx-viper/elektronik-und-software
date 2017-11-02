#include <xpcc/architecture/platform.hpp>

#include <xpcc/processing.hpp>
#include <xpcc/io/iostream.hpp>
#include <xpcc/debug/logger.hpp>

#include "../../hardware_rev1.hpp"

xpcc::IODeviceWrapper<Board::Ui::DebugUart, xpcc::IOBuffer::BlockIfFull> loggerDevice;
xpcc::log::Logger logger{loggerDevice};

// ----------------------------------------------------------------------------
int
main()
{
	Board::initializeMcu();
	Board::Ui::initialize();
	Board::Encoders::initialize();

	logger << "\n\nWelcome to Encoder Test!\n\n";

	xpcc::PeriodicTimer timer{200};
	while (1)
	{
		using namespace Board::Encoders;

		if(timer.execute()) {
			logger << "Motor: " << Motor::getEncoderRaw() << "\n";
			logger << "HP1: " << Heatprobe1::getEncoderRaw() << "\n";
			logger << "HP2: " << Heatprobe2::getEncoderRaw() << "\n";
			logger << "HP3: " << Heatprobe3::getEncoderRaw() << "\n" << xpcc::endl;
		}
	}

	return 0;
}
