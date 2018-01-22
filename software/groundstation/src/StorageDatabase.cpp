#include "StorageDatabase.hpp"

StorageDatabase::StorageDatabase(const QString& host, const QString& user,
								 const QString& password, const QString& database)
{
	db = QSqlDatabase::addDatabase("QPSQL");
	db.setHostName(host);
	db.setUserName(user);
	db.setPassword(password);
	db.setDatabaseName(database);

	if(!queryRawData.prepare("INSERT INTO raw_data (groundstation_time, serial_data, direction) VALUES (:time, :data, 'RX')"))
	{
		errorStrings.append(db.lastError().text());
	}

	//	generator script:
	//	for i in range(0, 3):
	//		for j in range(0, 9):
	//			#print("\"({}, {}, :freq, :value{}{}, :exp_time, :ground_time)\"".format(i, j, i, j))
	//			print("\"SELECT {} AS sample_id, {} AS sensor_id, :value{}{} as value FROM DUAL UNION ALL \"".format(i, j, i, j))
	if(!queryIceTemperature.prepare("INSERT INTO data_ice_sample_temperature "
									"(ice_sample_id, sensor_id, value, sample_freqency, experiment_time, "
									"groundstation_time, experiment_id) "
									"SELECT v.sample_id, v.sensor_id, v.value, :freq, :exp_time, :ground_time, :exp_id "
									"FROM ( "
									"SELECT 0 AS sample_id, 0 AS sensor_id, :value00 as value FROM DUAL UNION ALL "
									"SELECT 0 AS sample_id, 1 AS sensor_id, :value01 as value FROM DUAL UNION ALL "
									"SELECT 0 AS sample_id, 2 AS sensor_id, :value02 as value FROM DUAL UNION ALL "
									"SELECT 0 AS sample_id, 3 AS sensor_id, :value03 as value FROM DUAL UNION ALL "
									"SELECT 0 AS sample_id, 4 AS sensor_id, :value04 as value FROM DUAL UNION ALL "
									"SELECT 0 AS sample_id, 5 AS sensor_id, :value05 as value FROM DUAL UNION ALL "
									"SELECT 0 AS sample_id, 6 AS sensor_id, :value06 as value FROM DUAL UNION ALL "
									"SELECT 0 AS sample_id, 7 AS sensor_id, :value07 as value FROM DUAL UNION ALL "
									"SELECT 0 AS sample_id, 8 AS sensor_id, :value08 as value FROM DUAL UNION ALL "
									"SELECT 1 AS sample_id, 0 AS sensor_id, :value10 as value FROM DUAL UNION ALL "
									"SELECT 1 AS sample_id, 1 AS sensor_id, :value11 as value FROM DUAL UNION ALL "
									"SELECT 1 AS sample_id, 2 AS sensor_id, :value12 as value FROM DUAL UNION ALL "
									"SELECT 1 AS sample_id, 3 AS sensor_id, :value13 as value FROM DUAL UNION ALL "
									"SELECT 1 AS sample_id, 4 AS sensor_id, :value14 as value FROM DUAL UNION ALL "
									"SELECT 1 AS sample_id, 5 AS sensor_id, :value15 as value FROM DUAL UNION ALL "
									"SELECT 1 AS sample_id, 6 AS sensor_id, :value16 as value FROM DUAL UNION ALL "
									"SELECT 1 AS sample_id, 7 AS sensor_id, :value17 as value FROM DUAL UNION ALL "
									"SELECT 1 AS sample_id, 8 AS sensor_id, :value18 as value FROM DUAL UNION ALL "
									"SELECT 2 AS sample_id, 0 AS sensor_id, :value20 as value FROM DUAL UNION ALL "
									"SELECT 2 AS sample_id, 1 AS sensor_id, :value21 as value FROM DUAL UNION ALL "
									"SELECT 2 AS sample_id, 2 AS sensor_id, :value22 as value FROM DUAL UNION ALL "
									"SELECT 2 AS sample_id, 3 AS sensor_id, :value23 as value FROM DUAL UNION ALL "
									"SELECT 2 AS sample_id, 4 AS sensor_id, :value24 as value FROM DUAL UNION ALL "
									"SELECT 2 AS sample_id, 5 AS sensor_id, :value25 as value FROM DUAL UNION ALL "
									"SELECT 2 AS sample_id, 6 AS sensor_id, :value26 as value FROM DUAL UNION ALL "
									"SELECT 2 AS sample_id, 7 AS sensor_id, :value27 as value FROM DUAL UNION ALL "
									"SELECT 2 AS sample_id, 8 AS sensor_id, :value28 as value FROM DUAL "
									") v"
									))
	{
		errorStrings.append(db.lastError().text());
	}
}

StorageDatabase::~StorageDatabase()
{
	db.commit();
	db.close();
}

void StorageDatabase::logRawData(const QByteArray& data, const QDateTime& time)
{
	queryRawData.bindValue(":time", time);
	queryRawData.bindValue(":data", data.toBase64());
	if(!queryRawData.exec()) {
		errorStrings.append(db.lastError().text());
	}
}


void  StorageDatabase::logIceTemperature(uint32_t seq, const std::array<int32_t, 27>& values, bool sample_freq, const QDateTime& time)
{
	queryIceTemperature.bindValue(":freq", sample_freq ? "'HIGH'" : "'LOW'");
	queryIceTemperature.bindValue(":exp_time", seq);
	queryIceTemperature.bindValue(":ground_time", time);
	queryIceTemperature.bindValue(":exp_id", 0);
	for (int i = 0; i < 3; i++)
		for (int j = 0; i < 9; i++)
			queryIceTemperature.bindValue(QString(":value{}{}").arg(i, j), values.at(i * 9 + j));
	if(!queryIceTemperature.exec()) {
		errorStrings.append(db.lastError().text());
	}
}

void  StorageDatabase::logOtherTemperature(uint32_t seq, const std::array<int16_t, 5>& values, bool sample_freq, const QDateTime& time)
{

}

void  StorageDatabase::logHpTemperature(uint32_t seq, const std::array<int32_t, 3>& values, bool sample_freq, const QDateTime& time)
{

}

void  StorageDatabase::logHpPenetrationDepthLS(uint32_t seq, const std::array<int32_t, 3>& values, const QDateTime& time)
{

}

void  StorageDatabase::logHpPenetrationDepthHS(uint32_t seq, const std::array<int32_t, 3>& values, const QDateTime& time)
{

}

void  StorageDatabase::logPressureLS(uint32_t seq, const std::array<int32_t, 5>& values, const QDateTime& time)
{

}

void  StorageDatabase::logPressureHS(uint32_t seq, const std::array<int32_t, 20>& values, const QDateTime& time)
{

}

void  StorageDatabase::logStatus(uint32_t seq,
								 uint32_t exp_time,
								 uint8_t lo,
								 uint8_t soe,
								 uint8_t sods,
								 uint8_t state,
								 uint8_t hpOvertemperature,
								 int32_t motorPosition,
								 uint8_t testModeEnabled,
								 const QDateTime& time)
{

}

void StorageDatabase::logExperimentId(uint32_t experimentId, const QDateTime &time)
{

}
