#include <xpcc/architecture/platform.hpp>

#include <xpcc/processing.hpp>
#include <xpcc/io/iostream.hpp>
#include <xpcc/debug/logger.hpp>
#include <xpcc/driver/adc/ad7928.hpp>

#include "../../hardware_rev1.hpp"

xpcc::IODeviceWrapper<Board::Rxsm::TelemetryUart, xpcc::IOBuffer::BlockIfFull> loggerDevice;
xpcc::log::Logger logger{loggerDevice};

using namespace Board;

using xpcc::ad7928;

class ThreadOne : public xpcc::pt::Protothread
{
public:
	ad7928::SequenceChannels_t sequence =
		ad7928::SequenceChannels::Ch0 |
		ad7928::SequenceChannels::Ch1 |
		ad7928::SequenceChannels::Ch2 |
		ad7928::SequenceChannels::Ch3 |
		ad7928::SequenceChannels::Ch4 |
		ad7928::SequenceChannels::Ch5 |
		ad7928::SequenceChannels::Ch6 |
		ad7928::SequenceChannels::Ch7;

	bool
	update()
	{
		PT_BEGIN();

		logger << "Initialize device" << xpcc::endl;
		PT_CALL(adc.initialize());

		PT_CALL(adc.startSequence(sequence));

		// Run forever
		while (true)
		{
			data = PT_CALL(adc.nextSequenceConversion());
			logger << data << xpcc::endl;

			if(data.channel() == ad7928::InputChannel::Ch7) {
				timeout.restart(500);
				PT_WAIT_UNTIL(timeout.isExpired());
			}
		}

		PT_END();
	}

private:
	ad7928::Data data;
	xpcc::ShortTimeout timeout;
	xpcc::Ad7928<Board::Powermanagement::Adc::Spi, Board::Powermanagement::Adc::Cs> adc;
} thread;


// ----------------------------------------------------------------------------
int
main()
{
	Board::initializeMcu();
	Board::Ui::initialize();
	Board::Rxsm::initialize();
	Board::Powermanagement::initialize();

	logger << "\n\nWelcome to Adc Test!\n\n";

	while (1)
	{
		thread.update();
	}

	return 0;
}
