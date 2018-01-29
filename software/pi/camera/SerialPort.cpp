#include "SerialPort.hpp"

#include <errno.h>
#include <fcntl.h> 
#include <string.h>
#include <termios.h>
#include <unistd.h>
#include <system_error>
#include <limits>
#include <sys/ioctl.h>
#include <poll.h>

SerialPort::SerialPort(const char* device_, int baudrate_)
	: device{device_}, baudrate{baudrate_}
{	
}

SerialPort::~SerialPort()
{
	close();
}

void SerialPort::open()
{
	fd = ::open(device, O_RDWR | O_NOCTTY | O_SYNC);

	if(fd < 0) {
		throw std::system_error(errno, std::generic_category(), "opening serial port failed");
	}

	try {
		setupPort(fd, baudrate);
	} catch(...) {
		close();
		throw;
	}
}

void SerialPort::close()
{
	if(fd > 0) {
		::close(fd);
		fd = -1;
	}
}

bool SerialPort::isOpen()
{
	return fd > 0;
}

void SerialPort::setBaudrate(int baudrate_)
{
	baudrate = baudrate_;
}

void SerialPort::setDevice(const char* device_)
{
	device = device_;
}

size_t SerialPort::read(uint8_t* data, size_t bufferSize)
{
	if(fd < 0) {
		throw std::logic_error("Port is not open");
	}

	int bytesAvailable = 0;
	ioctl(fd, FIONREAD, &bytesAvailable);

	if(bytesAvailable == 0) {
		return 0;
	}

	ssize_t bytesRead = ::read(fd, data, bufferSize);
	if(bytesRead < 0) {
		throw std::system_error(errno, std::generic_category(), "read failed");
	}

	return bytesRead;
}

void SerialPort::write(const uint8_t* data, size_t size)
{
	if(fd < 0) {
		throw std::logic_error("Port is not open");
	}

	while (size > 0) {
		ssize_t bytesWritten = ::write(fd, data, size);
		if(bytesWritten < 0) {
			throw std::system_error(errno, std::generic_category(), "write failed");
		}

		size -= bytesWritten;
	}
}

bool SerialPort::poll(std::chrono::milliseconds timeout)
{
	auto ms = timeout.count();
	if(ms > std::numeric_limits<int>::max()) {
		ms = std::numeric_limits<int>::max();
	}

	struct pollfd fds[1] = {};
	fds[0].fd = fd;
	fds[0].events = POLLIN;
	auto result = ::poll(fds, 1, ms);

	return result > 0;
}

// from https://stackoverflow.com/questions/6947413/how-to-open-read-and-write-from-serial-port-in-c
void SerialPort::setupPort(int fd, int speed)
{
	struct termios tty;
	memset (&tty, 0, sizeof tty);

	if (tcgetattr(fd, &tty) != 0) {
		throw std::system_error(errno, std::generic_category(), "tcgetattr failed");
	}

    cfsetospeed(&tty, (speed_t)speed);
    cfsetispeed(&tty, (speed_t)speed);

    tty.c_cflag |= (CLOCAL | CREAD);    /* ignore modem controls */
    tty.c_cflag &= ~CSIZE;
    tty.c_cflag |= CS8;         /* 8-bit characters */
    tty.c_cflag &= ~PARENB;     /* no parity bit */
    tty.c_cflag &= ~CSTOPB;     /* 1 stop bit */
    tty.c_cflag &= ~CRTSCTS;    /* no hardware flowcontrol */

    /* setup for non-canonical mode */
    tty.c_iflag &= ~(IGNBRK | BRKINT | PARMRK | ISTRIP | INLCR | IGNCR | ICRNL | IXON);
    tty.c_lflag &= ~(ECHO | ECHONL | ICANON | ISIG | IEXTEN);
    tty.c_oflag &= ~OPOST;

    /* fetch bytes as they become available */
    tty.c_cc[VMIN] = 1;
    tty.c_cc[VTIME] = 1;

	if (tcsetattr(fd, TCSANOW, &tty) != 0) {
		throw std::system_error(errno, std::generic_category(), "tcsetattr failed");
	}
}

// from https://stackoverflow.com/questions/6947413/how-to-open-read-and-write-from-serial-port-in-c
void SerialPort::setBlocking(int fd, bool blocking)
{
	struct termios tty;
	memset (&tty, 0, sizeof tty);
	if (tcgetattr(fd, &tty) != 0) {
		throw std::system_error(errno, std::generic_category(), "tcgetattr failed");
	}

	tty.c_cc[VMIN]  = blocking ? 1 : 0;
	tty.c_cc[VTIME] = 5;            // 0.5 seconds read timeout

	if (tcsetattr(fd, TCSANOW, &tty) != 0) {
		throw std::system_error(errno, std::generic_category(), "tcsetattr failed");
	}
}
