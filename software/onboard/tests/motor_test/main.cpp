#include <xpcc/architecture/platform.hpp>

#include <xpcc/processing.hpp>
#include <xpcc/io/iostream.hpp>
#include <xpcc/debug/logger.hpp>

#include "../../hardware_rev1.hpp"

#include "Motor.hpp"

xpcc::IODeviceWrapper<Board::Ui::DebugUart, xpcc::IOBuffer::BlockIfFull> loggerDevice;
xpcc::log::Logger logger{loggerDevice};

// ----------------------------------------------------------------------------

using namespace viper::onboard;

int
main()
{
	Board::initializeMcu();
	Board::Ui::initialize();
	Board::Rxsm::initialize();
	Board::Motor::initialize();
	Board::Encoders::initialize();

	logger << "\n\nWelcome to Motor Test!\n\n" << xpcc::endl;

	Board::Motor::MotorTimer::start();

	Board::Motor::ResetU::setOutput(false);
	Board::Motor::ResetV::setOutput(false);
	Board::Motor::ResetW::setOutput(false);

	while(!Board::Rxsm::EventSoe::read()) {
		Board::Ui::LedRed::set(Board::Motor::EndSwitch::read());
	}

	if(Board::Rxsm::EventLo::read()) {
		Motor::setPwm(-0x1FF);
	} else {
		Motor::setPwm(0x1FF);
	}

	while (1)
	{
		logger << Board::Encoders::Motor::getEncoderRaw() << xpcc::endl;
		Board::Ui::LedRed::set(Board::Motor::EndSwitch::read());
	}

	return 0;
}
