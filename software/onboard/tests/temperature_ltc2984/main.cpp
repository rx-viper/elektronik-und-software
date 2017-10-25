#include <xpcc/architecture/platform.hpp>

#include <xpcc/processing.hpp>
#include <xpcc/driver/temperature/ltc2984.hpp>
#include <xpcc/io/iostream.hpp>
#include <xpcc/debug/logger.hpp>

#include "../../hardware_rev1.hpp"

/**
* Example to demonstrate a xpcc driver for LTC2984 (or LTC2983) with a Pt100 temperature sensor.
*
* GND and +3V3 are connected to the temperature measurement system.
*
* The schematic shows how to connect the Pt100 and the current sense resistor to the chip:
*  ---------+
*           |
*       CH1 +---------+
*           |         |
*           |        +++
* LTC29783  |        | |
*   or      |        | | R 2k 0.1%
* LTC29784  |        | |
*           |        +++
*           |         |
*       CH2 +---------+
*           |         |
*       CH3 +---------+
*           |         |
*           |        +++
*           |        | |
*           |        | | Pt100 sensor (4 wire)
*           |        | |
*           |        +++
*           |         |
*       CH4 +---------+
*           |         |
*       CH5 +---------+
*           |
*  ---------+
*
*/

xpcc::IODeviceWrapper<Board::Ui::DebugUart, xpcc::IOBuffer::BlockIfFull> loggerDevice;
xpcc::log::Logger logger{loggerDevice};

class ThreadOne : public xpcc::pt::Protothread
{
public:
	ThreadOne() :
		tempSensor()
	{
	}

	bool
	update()
	{
		PT_BEGIN()

		// Configure the device
		RF_CALL_BLOCKING(tempSensor.configureChannel(xpcc::ltc2984::Channel::Ch2, xpcc::ltc2984::Configuration::rsense(
												xpcc::ltc2984::Configuration::Rsense::Resistance_t(2000*1024)
												)));

		PT_CALL(tempSensor.configureChannel(xpcc::ltc2984::Channel::Ch4, xpcc::ltc2984::Configuration::rtd(
									xpcc::ltc2984::Configuration::SensorType::Pt100,
									xpcc::ltc2984::Configuration::Rtd::RsenseChannel::Ch2_Ch1,
									xpcc::ltc2984::Configuration::Rtd::Wires::Wire4,
									xpcc::ltc2984::Configuration::Rtd::ExcitationMode::Rotation_Sharing,
									xpcc::ltc2984::Configuration::Rtd::ExcitationCurrent::Current_500uA,
									xpcc::ltc2984::Configuration::Rtd::RtdCurve::European
									)));
		tempSensor.enableChannel(xpcc::ltc2984::Configuration::MuxChannel::Ch4);
		PT_CALL(tempSensor.setChannels());

		logger << "Device configured" << xpcc::endl;


		while (1)
		{
			//PT_CALL(tempSensor.initiateMeasurements());
			PT_CALL(tempSensor.initiateSingleMeasurement(xpcc::ltc2984::Channel::Ch4));
			stamp = xpcc::Clock::now();

			// we wait until the conversations are done
			while (PT_CALL(tempSensor.isBusy()))
			{
			}
			logger << "Temperature measurement finished." << xpcc::endl;

			PT_CALL(tempSensor.readChannel(xpcc::ltc2984::Channel::Ch4, temp));
			logger << "Temperature: " << temp << xpcc::endl;

			logger << "Time: " << (xpcc::Clock::now() - stamp) << xpcc::endl;

			this->timeout.restart(1000);
			PT_WAIT_UNTIL(this->timeout.isExpired());
		}

		PT_END();
	}

private:
	using SpiMaster = Board::TemperaturePt100::Chips456::Spi;
	using Cs = Board::TemperaturePt100::Chips456::Cs6;

	xpcc::Ltc2984<SpiMaster, Cs> tempSensor;
	xpcc::Timeout timeout;
	xpcc::ltc2984::Data temp;
	xpcc::Timestamp stamp;
};


ThreadOne one;

// ----------------------------------------------------------------------------
int
main()
{
	Board::initializeMcu();
	Board::Ui::initialize();
	Board::TemperaturePt100::initialize();

	logger << "\n\nWelcome to LTC2983/LTC2984 demo!\n\n";

	while (1)
	{
		one.update();
	}

	return 0;
}
