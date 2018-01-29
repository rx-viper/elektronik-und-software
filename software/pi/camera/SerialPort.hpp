#ifndef SERIAL_PORT_HPP
#define SERIAL_PORT_HPP

#include <cstdint>
#include <chrono>

class SerialPort
{
public:
	SerialPort() = default;
	SerialPort(const char* device, int baudrate);
	~SerialPort();
	void open();
	void close();

	bool isOpen();

	void setBaudrate(int baudrate);
	void setDevice(const char* device);

	size_t read(uint8_t* data, size_t bufferSize);
	void write(const uint8_t* data, size_t size);

	bool poll(std::chrono::milliseconds timeout);

private:
	void setupPort(int fd, int speed);
	void setBlocking(int fd, bool blocking);

	int fd = -1;
	const char* device = "";
	int baudrate = 0;
};

#endif
