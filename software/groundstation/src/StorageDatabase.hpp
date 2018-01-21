#ifndef STORAGEDATABASE_HPP
#define STORAGEDATABASE_HPP

#include <QObject>
#include <QThread>
#include <QtSql>
#include <QString>
#include <QDateTime>

#include "Packets.hpp"


class StorageDatabase : public QThread
{
	Q_OBJECT
public:
	StorageDatabase(const QString& host = "::1",
					const QString& user = "viper",
					const QString& password = "viper",
					const QString& database = "viper");

	~StorageDatabase();

public:
	bool open() {return db.open();}

public:
	int error() const {return errorStrings.length();}
	const QString& lastError() const {return errorStrings.last();}
	const QStringList& getErrors() const {return errorStrings;}


public slots:
	void logRawData(const QByteArray& data, const QDateTime& time);

	void logIceTemperature(uint32_t seq, const std::array<int32_t, 27>& values, bool sample_freq, const QDateTime& time);
	void logOtherTemperature(uint32_t seq, const std::array<int16_t, 5>& values, bool sample_freq, const QDateTime& time);
	void logHpTemperature(uint32_t seq, const std::array<int32_t, 3>& values, bool sample_freq, const QDateTime& time);
	void logHpPenetrationDepthLS(uint32_t seq, const std::array<int32_t, 3>& values, const QDateTime& time);
	void logHpPenetrationDepthHS(uint32_t seq, const std::array<int32_t, 3>& values, const QDateTime& time);
	//void logHpPower(uint32_t seq, const std::array<uint16_t, 3>& values, const QDateTime& time);
	void logPressureLS(uint32_t seq, const std::array<int32_t, 5>& values, const QDateTime& time);
	void logPressureHS(uint32_t seq, const std::array<int32_t, 20>& values, const QDateTime& time);
	void logStatus(uint32_t seq,
				   uint32_t exp_time,
				   uint8_t lo,
				   uint8_t soe,
				   uint8_t sods,
				   uint8_t state,
				   uint8_t hpOvertemperature,
				   int32_t motorPosition,
				   uint8_t testModeEnabled,
				   const QDateTime& time);

private:
	QSqlQuery queryRawData;
	QSqlQuery queryIceTemperature;
	QSqlQuery queryHpTemperature;
	QSqlQuery queryHpPenetrationDepthLS;
	QSqlQuery queryHpPenetrationDepthHS;
	QSqlQuery queryPressureLS;
	QSqlQuery queryPressureHS;
	QSqlQuery queryStatus;

private:
	QSqlDatabase db;

private:
	QStringList errorStrings;

};

#endif // STORAGEDATABASE_HPP
