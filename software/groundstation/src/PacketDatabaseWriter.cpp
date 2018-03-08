#include "PacketDatabaseWriter.hpp"


#define CONNECT(signal) QObject::connect(this, SIGNAL(signal), &db, SLOT(signal))
//, Qt::QueuedConnection)

PacketDatabaseWriter::PacketDatabaseWriter(StorageDatabase& db) : db{db}
{
	CONNECT(logRawData(QByteArray,QDateTime));
	CONNECT(logIceTemperature(uint32_t,std::array<int32_t, 27>,bool,QDateTime));
	CONNECT(logHpTemperature(uint32_t,std::array<int32_t, 3>,bool,QDateTime));
	CONNECT(logHpPenetrationDepthLS(uint32_t,std::array<int32_t,3>,QDateTime));
	CONNECT(logHpPenetrationDepthHS(uint32_t,std::array<int32_t, 3>,QDateTime));
	CONNECT(logPressureLS(uint32_t,std::array<int32_t, 5>,std::array<int32_t, 5>,QDateTime));
	CONNECT(logPressureHS(uint32_t,std::array<int32_t, 20>,std::array<int32_t, 20>,QDateTime));
	CONNECT(logStatus(uint32_t,uint32_t,uint8_t,uint8_t,uint8_t,uint8_t,uint8_t,int32_t,uint8_t,uint32_t,uint8_t,uint32_t,QDateTime));
	CONNECT(logHpPower(uint32_t,std::array<uint16_t, 3>,std::array<uint16_t, 3>,bool,QDateTime));
	CONNECT(logBattVoltageHS(uint32_t,std::array<uint16_t, 4>,QDateTime));
	CONNECT(logBattVoltageLS(uint32_t,uint16_t,QDateTime));
	CONNECT(logMotorCurrentHS(uint32_t,std::array<uint16_t, 4>,QDateTime));
	CONNECT(logBattVoltageLS(uint32_t,uint16_t,QDateTime));
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
	static_assert (pressures.sensor1.size(), "array size is 0");
	static_assert (pressures.sensor2.size(), "array size is 0");

	//emit logPressureLS(pressures.sequenceNumber, pressures.sensor1, pressures.sensor2, QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const PressureHS& pressures)
{
	static_assert (pressures.sensor1.size(), "array size is 0");
	static_assert (pressures.sensor2.size(), "array size is 0");

	//emit logPressureHS(pressures.sequenceNumber, pressures.sensor1, pressures.sensor2, QDateTime::currentDateTime());
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
	//emit logExperimentId(status.experimentId, QDateTime::currentDateTime());
	emit logStatus(status.sequenceNumber, status.time,
				   status.lo, status.soe, status.sods,
				   static_cast<uint8_t>(status.state), status.hpOvertemperature,
				   status.motorPosition, status.testModeEnabled,
				   status.experimentId,
				   status.piRecordingEnabled, status.piStorageAvailable,
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
	emit logHpPower(hpPower.sequenceNumber, hpPower.voltage, hpPower.current, false, QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const HpPowerHS& hpPower)
{
	emit logHpPower(hpPower.sequenceNumber, hpPower.voltage, hpPower.current, true, QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const BattVoltageLS& battVoltage)
{
	emit logBattVoltageLS(battVoltage.sequenceNumber, battVoltage.value, QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const BattVoltageHS& battVoltage)
{
	emit logBattVoltageHS(battVoltage.sequenceNumber, battVoltage.values, QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const MotorCurrentLS& motorCurrent)
{
	emit logMotorCurrentLS(motorCurrent.sequenceNumber, motorCurrent.value, QDateTime::currentDateTime());
}

void PacketDatabaseWriter::operator()(const MotorCurrentHS& motorCurrent)
{
	emit logMotorCurrentHS(motorCurrent.sequenceNumber, motorCurrent.values, QDateTime::currentDateTime());
}
