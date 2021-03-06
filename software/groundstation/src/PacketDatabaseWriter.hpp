#ifndef PACKETDATABASEWRITER_HPP
#define PACKETDATABASEWRITER_HPP

#include <QObject>

#include "StorageDatabase.hpp"

#include "Packets.hpp"

using viper::packet::IceTemperatureLS;
using viper::packet::IceTemperatureHS;
using viper::packet::OtherTemperatureLS;
using viper::packet::OtherTemperatureHS;
using viper::packet::HpPenetrationDepthLS;
using viper::packet::HpPenetrationDepthHS;
using viper::packet::PressureLS;
using viper::packet::PressureHS;
using viper::packet::HpTemperatureLS;
using viper::packet::HpTemperatureHS;
using viper::packet::HpPowerLS;
using viper::packet::HpPowerHS;
using viper::packet::BattVoltageLS;
using viper::packet::BattVoltageHS;
using viper::packet::MotorCurrentLS;
using viper::packet::MotorCurrentHS;
using viper::packet::Status;
using viper::packet::TestMode;


class PacketDatabaseWriter : public QObject
{
	Q_OBJECT
public:
	PacketDatabaseWriter(StorageDatabase& db);

public:
	void operator()(const IceTemperatureLS& iceTemperatures);
	void operator()(const IceTemperatureHS& iceTemperatures);
	void operator()(const OtherTemperatureLS& otherTemperatures);
	void operator()(const OtherTemperatureHS& otherTemperatures);
	void operator()(const HpTemperatureLS& hpTemperatures);
	void operator()(const HpTemperatureHS& hpTemperatures);
	void operator()(const HpPenetrationDepthLS& hpDepth);
	void operator()(const HpPenetrationDepthHS& hpDepth);
	void operator()(const PressureLS& pressures);
	void operator()(const PressureHS& pressures);
	void operator()(const HpPowerLS& hpPower);
	void operator()(const HpPowerHS& hpPower);
	void operator()(const BattVoltageLS& battVoltage);
	void operator()(const BattVoltageHS& battVoltage);
	void operator()(const MotorCurrentLS& motorCurrent);
	void operator()(const MotorCurrentHS& motorCurrent);
	void operator()(const Status& status);
	void operator()(const TestMode& mode){ (void)mode; }

signals:
	void logRawData(const QByteArray& data, const QDateTime& time);

	void logIceTemperature(uint32_t seq, const std::array<int32_t, 27>& values, bool sample_freq, const QDateTime& time);
	void logOtherTemperature(uint32_t seq, const std::array<int16_t, 5>& values, bool sample_freq, const QDateTime& time);
	void logHpTemperature(uint32_t seq, const std::array<int32_t, 3>& values, bool sample_freq, const QDateTime& time);
	void logHpPenetrationDepthLS(uint32_t seq, const std::array<int32_t, 3>& values, const QDateTime& time);
	void logHpPenetrationDepthHS(uint32_t seq, const std::array<int32_t, 3>& values, const QDateTime& time);
	void logPressureLS(uint32_t seq, const std::array<uint16_t, 5>& sensor1, const std::array<uint16_t, 5>& sensor2, const QDateTime& time);
	void logPressureHS(uint32_t seq, const std::array<uint16_t, 20>& sensor1, const std::array<uint16_t, 20>& sensor2, const QDateTime& time);
	void logStatus(uint32_t seq,
				   uint32_t exp_time,
				   uint8_t lo,
				   uint8_t soe,
				   uint8_t sods,
				   uint8_t state,
				   uint8_t hpOvertemperature,
				   int32_t motorPosition,
				   uint8_t testModeEnabled,
				   uint32_t experimentId,
				   uint8_t piRecordingEnabled,
				   uint32_t piStorageAvailable,
				   const QDateTime& time);
	void logHpPower(uint32_t seq,
					const std::array<uint16_t, 3>& voltage,
					const std::array<uint16_t, 3>& current,
					bool sample_freq,
					const QDateTime& time);
	void logBattVoltageHS(uint32_t seq, const std::array<uint16_t, 4>& values, const QDateTime& time);
	void logBattVoltageLS(uint32_t seq, uint16_t value, const QDateTime& time);
	void logMotorCurrentHS(uint32_t seq, const std::array<uint16_t, 4>& values, const QDateTime& time);
	void logMotorCurrentLS(uint32_t seq, uint16_t value, const QDateTime& time);

public slots:

private:
	StorageDatabase& db;
};

#endif // PACKETDATABASEWRITER_HPP
