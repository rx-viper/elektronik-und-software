#include <xpcc/architecture/platform.hpp>

#include <xpcc/processing.hpp>
#include <xpcc/driver/pressure/amsys5915.hpp>
#include <xpcc/io/iostream.hpp>
#include <xpcc/debug/logger.hpp>

#include "../../hardware_rev1.hpp"

xpcc::IODeviceWrapper<Board::Ui::DebugUart, xpcc::IOBuffer::BlockIfFull> device;

// Set all four logger streams to use the UART
xpcc::log::Logger xpcc::log::debug(device);
xpcc::log::Logger xpcc::log::info(device);
xpcc::log::Logger xpcc::log::warning(device);
xpcc::log::Logger xpcc::log::error(device);

// Set the log level
#undef	XPCC_LOG_LEVEL
#define	XPCC_LOG_LEVEL xpcc::log::DEBUG

xpcc::amsys5915::Data data;
xpcc::Amsys5915<Board::Sensors::PressureI2c> pressureSensor(data, 0x41);

class ThreadOne : public xpcc::pt::Protothread
{
public:
	bool
	update()
	{
		PT_BEGIN();

		XPCC_LOG_DEBUG << "Ping the device from ThreadOne" << xpcc::endl;

		// ping the device until it responds
		while (true)
		{
			// we wait until the task started
			if (PT_CALL(pressureSensor.ping())) {
			 	break;
			}
			// otherwise, try again in 10ms
			this->timeout.restart(10);
			PT_WAIT_UNTIL(this->timeout.isExpired());
		}

		XPCC_LOG_DEBUG << "Device responded" << xpcc::endl;

		while (true)
		{
			while (! PT_CALL(pressureSensor.readPressure()))
			{
				PT_YIELD();
			}
			
			XPCC_LOG_INFO << "Pressure [0..1]: " << data.getPressure() << xpcc::endl;
			XPCC_LOG_INFO << "Temperature [degree centigrade]: " << data.getTemperature() << xpcc::endl;
			
			// read next pressure measurement in 1ms
			this->timeout.restart(1);
			PT_WAIT_UNTIL(this->timeout.isExpired());
		}

		PT_END();
	}
private:
	xpcc::ShortTimeout timeout;
};

ThreadOne one;

// ----------------------------------------------------------------------------
int
main()
{
	Board::initializeMcu();
	Board::Ui::initialize();
	Board::Sensors::initialize();

	XPCC_LOG_INFO << "\n\nWelcome to AMSYS 5915 pressure sensor demo!\n\n";

	xpcc::ShortPeriodicTimer tmr(500);

	while (1)
	{
		one.update();
		if (tmr.execute()) {
			Board::Ui::LedGreen::toggle();
		}
	}

	return 0;
}
