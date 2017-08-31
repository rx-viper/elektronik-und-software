#ifndef VIPER_COMMUNICATION_EXCEPTIONS_HPP
#define VIPER_COMMUNICATION_EXCEPTIONS_HPP

#include <stdexcept>
#include <QString>

namespace viper
{

class CommunicationError : public std::runtime_error
{
public:
	explicit CommunicationError(const std::string& message)
		: std::runtime_error(message) {}

	explicit CommunicationError(const QString& message)
		: std::runtime_error(message.toStdString()) {}
};

class MalformedPacket : public CommunicationError
{
public:
	// inherit constructors
	using CommunicationError::CommunicationError;
};

class CommunicationIOError : public CommunicationError
{
public:
	// inherit constructors
	using CommunicationError::CommunicationError;
};

}

#endif // VIPER_COMMUNICATION_EXCEPTIONS_HPP
