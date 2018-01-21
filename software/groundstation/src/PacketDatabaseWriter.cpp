#include "PacketDatabaseWriter.hpp"


#define CONNECT(signal) QObject::connect(this, SIGNAL(signal), &db, SLOT(signal), Qt::QueuedConnection)

PacketDatabaseWriter::PacketDatabaseWriter(StorageDatabase& db) : db{db}
{
	CONNECT(logRawData(QByteArray,QDateTime));
	CONNECT(logStatus(uint32_t,uint32_t,uint8_t,uint8_t,uint8_t,uint8_t,uint8_t,int32_t,uint8_t,QDateTime));
	CONNECT(logHpPenetrationDepthHS(uint32_t,std::array<int32_t,_Tp2>,QDateTime));
	CONNECT(logHpPenetrationDepthLS(uint32_t,std::array<int32_t,_Tp2>,QDateTime));
	CONNECT(logHpTemperature(uint32_t,std::array<int32_t,_Tp2>,bool,QDateTime));
	CONNECT(logIceTemperature(uint32_t,std::array<int32_t,_Tp2>,bool,QDateTime));
	CONNECT(logOtherTemperature(uint32_t,std::array<int16_t,_Tp2>,bool,QDateTime));
	CONNECT(logPressureHS(uint32_t,std::array<int32_t,_Tp2>,QDateTime));
	CONNECT(logPressureLS(uint32_t,std::array<int32_t,_Tp2>,QDateTime));
}


void PacketDatabaseWriter::operator()(const IceTemperatureLS& data)
{
	static_assert(data.temperatures.size() == 27, "Unexpected ice temp data size");

	emit logIceTemperature(data.sequenceNumber, data.temperatures, false, QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const IceTemperatureHS& data)
{
	static_assert(data.temperatures.size() == 27, "Unexpected ice temp data size");

	emit logIceTemperature(data.sequenceNumber, data.temperatures, true, QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const PressureLS& pressures)
{
	static_assert (pressures.values.size(), "array size is 0");

	emit logPressureLS(pressures.sequenceNumber, pressures.values, QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const PressureHS& pressures)
{
	static_assert (pressures.values.size(), "array size is 0");

	emit logPressureHS(pressures.sequenceNumber, pressures.values, QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const HpTemperatureLS& hpTemperatures)
{
	emit logHpTemperature(hpTemperatures.sequenceNumber, hpTemperatures.temperatures, false, QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const HpTemperatureHS& hpTemperatures)
{
	emit logHpTemperature(hpTemperatures.sequenceNumber, hpTemperatures.temperatures, true, QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const Status& status)
{
	emit logStatus(status.sequenceNumber, status.time,
				   status.lo, status.soe,status.sods,
				   static_cast<uint8_t>(status.state), status.hpOvertemperature,
				   status.motorPosition, status.testModeEnabled,
				   QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const OtherTemperatureLS& otherTemperatures)
{
	emit logOtherTemperature(otherTemperatures.sequenceNumber, otherTemperatures.temperatures, false, QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const OtherTemperatureHS& otherTemperatures)
{
	emit logOtherTemperature(otherTemperatures.sequenceNumber, otherTemperatures.temperatures, true, QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const HpPenetrationDepthLS& hpDepth)
{
	emit logHpPenetrationDepthLS(hpDepth.sequenceNumber, hpDepth.depth, QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const HpPenetrationDepthHS& hpDepth)
{
	emit logHpPenetrationDepthHS(hpDepth.sequenceNumber, hpDepth.depth, QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const HpPowerLS& hpPower)
{

}

void PacketDatabaseWriter::operator()(const HpPowerHS& hpPower)
{

}

void PacketDatabaseWriter::operator()(const BattVoltageLS& battVoltage)
{

}

void PacketDatabaseWriter::operator()(const BattVoltageHS& battVoltage)
{

}

void PacketDatabaseWriter::operator()(const MotorCurrentLS& motorCurrent)
{

}

void PacketDatabaseWriter::operator()(const MotorCurrentHS& motorCurrent)
{

}
