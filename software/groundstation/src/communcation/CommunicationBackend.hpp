#ifndef VIPER_COMMUNICATION_BACKEND_HPP
#define VIPER_COMMUNICATION_BACKEND_HPP

#include <QObject>
#include "BackendConfigWidget.hpp"

namespace viper
{

class CommunicationBackend : public QObject
{
	Q_OBJECT
public:
	virtual ~CommunicationBackend() = default;

	virtual void open() = 0;
	virtual bool isOpen() const noexcept = 0;
	virtual void close() noexcept = 0;

	virtual std::size_t write(const uint8_t* data, std::size_t size) = 0;

	virtual bool isDataAvailable() const = 0;
	virtual std::size_t read(uint8_t* destination, std::size_t bufferSize) = 0;

	virtual void reloadConfiguration() {};
	virtual bool isConfigurable() { return false; };
	virtual BackendConfigWidget* makeConfigWidget() { return nullptr; }

signals:
	void dataReceived();
};

}
#endif // COMMUNICATION_BACKEND_HPP
