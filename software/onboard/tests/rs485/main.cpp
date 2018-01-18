#include <xpcc/architecture/platform.hpp>

#include <xpcc/processing.hpp>
#include <xpcc/io/iostream.hpp>
#include <xpcc/debug/logger.hpp>

#include "../../hardware_rev1.hpp"

xpcc::IODeviceWrapper<Board::Rxsm::TelemetryUart, xpcc::IOBuffer::BlockIfFull> loggerDevice;
xpcc::log::Logger logger{loggerDevice};

using Uart = Board::Rxsm::TelemetryUart;

// ----------------------------------------------------------------------------
int
main()
{
	Board::initializeMcu();
	Board::Ui::initialize();
	Board::Rxsm::initialize();
	Board::Camera::LightPin::setOutput(true);
	
	logger << "\n\nWelcome to RS485 Test!\n\n";

	while (1)
	{
		uint8_t data = 0;
		if(Uart::read(data)) {
			Board::Ui::LedGreen::toggle();
			if(data != '\n') {
				Uart::write((data + 1) % 0xFF);
			} else {
				Uart::write('\n');
			}
		}
	}

	return 0;
}
