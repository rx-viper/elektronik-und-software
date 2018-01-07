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

	Motor::initialize();

	logger << "\n\nWelcome to Motor Test!\n\n" << xpcc::endl;
	Board::Ui::LedRed::reset();

	while(!Board::Rxsm::EventSoe::read()) {
//		if()
		bool hallU = Board::Motor::HallU::read();
		bool hallV = Board::Motor::HallV::read();
		bool hallW = Board::Motor::HallW::read();
		
		Board::Ui::LedRed::set(hallU);
		Board::Ui::LedGreen::set(hallV);
		Board::Ui::LedBlue::set(hallW);

		logger << (hallU?1:0) << (hallV?1:0) << (hallW?1:0) << xpcc::endl;
	}

	Motor::home();
	while(!Motor::isHomed()) {
		Motor::update();
	}
	
	//Motor::setPwm(1000);
//	xpcc::delayMilliseconds(500);
	/*xpcc::delayMilliseconds(50);
	Motor::update();
	xpcc::delayMilliseconds(50);
	Motor::update();
	xpcc::delayMilliseconds(50);
	Motor::update();
	xpcc::delayMilliseconds(50);
	Motor::update();*/
	logger << Motor::getPosition() << xpcc::endl;

	while(!Board::Rxsm::EventLo::read()) {
		Motor::update();
		Board::Ui::LedRed::set(Board::Motor::EndSwitch::read());
	}

	Motor::setPosition(5'600'000);

	while(!Motor::isPositionReached()) {
		Motor::update();
		Board::Ui::LedRed::set(Board::Motor::EndSwitch::read());
	}

	Motor::home();
	while(!Motor::isHomed()) {
		Motor::update();
		Board::Ui::LedRed::set(Board::Motor::EndSwitch::read());
	}

	while (1)
	{
//		logger << Board::Encoders::Motor::getEncoderRaw() << xpcc::endl;
		Board::Ui::LedRed::set(Board::Motor::EndSwitch::read());
	}

	return 0;
}
