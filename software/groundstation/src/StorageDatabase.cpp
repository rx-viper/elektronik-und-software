#include "StorageDatabase.hpp"
#include <iostream>

StorageDatabase::StorageDatabase(QSqlDatabase& db_) :
	db{db_}
{
}

void StorageDatabase::prepareQueries() {
	if(!queryRawData.prepare("INSERT INTO raw_data (direction, serial_data, groundstation_time) VALUES ('RX', :data, :time )"))
	{
		errorStrings.append(queryRawData.lastError().text());
		errorStrings.append(db.driver()->lastError().text());
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
		errorStrings.append(queryRawData.lastError().text());
		errorStrings.append(db.driver()->lastError().text());
	}
	if(!queryHpTemperature.prepare("INSERT INTO data_heat_probe_temperature "
								   "(sensor_id, value, sample_freqency, experiment_time, groundstation_time, experiment_id) "
								   "VALUES (?, ?, ?, ?, ?, ?)"
								   ))
	{
		errorStrings.append(db.lastError().text());
		errorStrings.append(queryRawData.lastError().text());
		errorStrings.append(db.driver()->lastError().text());
	}
	if(!queryHpPenetrationDepth.prepare("INSERT INTO data_heat_probe_penetration_depth "
								   "(sensor_id, value, sample_freqency, experiment_time, groundstation_time, experiment_id) "
								   "VALUES (:sensor_id, :value, :freq, :exp_time, :ground_time, :exp_id) "
								   ))
	{
		errorStrings.append(db.lastError().text());
		errorStrings.append(queryRawData.lastError().text());
		errorStrings.append(db.driver()->lastError().text());
	}
	if(!queryPressure.prepare("INSERT INTO data_pressure "
							  "(sensor_id, pressure, temperature, sample_freqency, experiment_time, groundstation_time, "
							  "experiment_id) "
							  "VALUES (:sensor_id, :pressure, :temperature, :freq, :exp_time, :ground_time, :exp_id) "
							  ))
	{
		errorStrings.append(db.lastError().text());
		errorStrings.append(queryRawData.lastError().text());
		errorStrings.append(db.driver()->lastError().text());
	}
	if(!queryHpPower.prepare("INSERT INTO data_heat_probe_power "
							 "(sensor_id, voltage, current, sample_freqency, experiment_time, groundstation_time, experiment_id) "
							 "VALUES (:sensor_id, :voltage, :current, :freq, :exp_time, :ground_time, :exp_id) "
							 ))
	{
		errorStrings.append(db.lastError().text());
		errorStrings.append(queryRawData.lastError().text());
		errorStrings.append(db.driver()->lastError().text());
	}
	if(!queryBattVoltage.prepare("INSERT INTO data_battery_voltage "
								 "(value, sample_freqency, experiment_time, groundstation_time, experiment_id) "
								 "VALUES (:value, :freq, :exp_time, :ground_time, :exp_id) "
								 ))
	{
		errorStrings.append(db.lastError().text());
		errorStrings.append(queryRawData.lastError().text());
		errorStrings.append(db.driver()->lastError().text());
	}
	if(!queryMotorCurrent.prepare("INSERT INTO data_motor_current "
								  "(value, sample_freqency, experiment_time, groundstation_time, experiment_id) "
								  "VALUES (:value, :freq, :exp_time, :ground_time, :exp_id) "
								  ))
	{
		errorStrings.append(db.lastError().text());
		errorStrings.append(queryRawData.lastError().text());
		errorStrings.append(db.driver()->lastError().text());
	}
	if(!queryOtherTemperature.prepare("INSERT INTO data_other_temperature "
									  "(sensor_id, value, sample_freqency, experiment_time, groundstation_time, experiment_id) "
									  "VALUES (:sensor_id, :value, :freq, :exp_time, :ground_time, :exp_id) "
									  ))
	{
		errorStrings.append(db.lastError().text());
		errorStrings.append(queryRawData.lastError().text());
		errorStrings.append(db.driver()->lastError().text());
	}
	if(!queryStateMachine.prepare("INSERT INTO data_state_machine "
								  "(state, experiment_time, groundstation_time, experiment_id) "
								  "VALUES (:state, :exp_time, :ground_time, :exp_id) "
								  ))
	{
		errorStrings.append(db.lastError().text());
		errorStrings.append(queryRawData.lastError().text());
		errorStrings.append(db.driver()->lastError().text());
	}
	if(!queryStatus.prepare("INSERT INTO data_status "
							"(sensor_id, value, experiment_time, groundstation_time, experiment_id) "
							"VALUES (:sensor_id, :value, :exp_time, :ground_time, :exp_id) "
							))
	{
		errorStrings.append(db.lastError().text());
		errorStrings.append(queryRawData.lastError().text());
		errorStrings.append(db.driver()->lastError().text());
	}

	for (int i = 0; i < errorStrings.size(); ++i) {
		 std::cout << "Database Query Preparation Errors: " << errorStrings.at(i).toLocal8Bit().constData() << std::endl;
	}
}

StorageDatabase::~StorageDatabase()
{
	db.commit();
	db.close();
}

bool StorageDatabase::open() {
	std::cout << "Connecting to Database... ";
	if(db.open() && db.isValid() && !db.isOpenError()) {
		std::cout << "Success!" << std::endl;
		prepareQueries();
		return true;
	}
	else {
		std::cout << "Error!" << std::endl;
		std::cout << db.lastError().text().toLocal8Bit().constData() << std::endl;
		return false;
	}
}

void StorageDatabase::logRawData(const QByteArray& data, const QDateTime& time)
{
	queryRawData.bindValue(0, QString(data.toBase64()));
	queryRawData.bindValue(1, time);
	if(!queryRawData.exec()) {
		errorStrings.append(db.lastError().text());
		std::cout << db.lastError().text().toLocal8Bit().constData() << std::endl << queryRawData.lastError().text().toLocal8Bit().constData() << std::endl;
		std::cout << queryRawData.lastQuery().toLocal8Bit().constData() << std::endl;
	}
}


void  StorageDatabase::logIceTemperature(uint32_t seq, const std::array<int32_t, 27>& values, bool sample_freq, const QDateTime& time)
{
	queryIceTemperature.bindValue(0, sample_freq ? "HIGH" : "LOW");
	queryIceTemperature.bindValue(1, seq);
	queryIceTemperature.bindValue(2, time);
	queryIceTemperature.bindValue(3, this->experiment_id);
	for (size_t i = 0; i < 27; i++) {
		queryIceTemperature.bindValue(i+3, values.at(i));
	}
	if(!queryIceTemperature.exec()) {
		errorStrings.append(db.lastError().text());
		std::cout << db.lastError().text().toLocal8Bit().constData() << std::endl << queryRawData.lastError().text().toLocal8Bit().constData() << std::endl;
		std::cout << queryRawData.lastQuery().toLocal8Bit().constData() << std::endl;
	}
}

void  StorageDatabase::logOtherTemperature(uint32_t seq, const std::array<int16_t, 5>& values, bool sample_freq, const QDateTime& time)
{
	/*
	for (size_t i = 0; i < values.size(); i++) {
		queryOtherTemperature.bindValue(":freq", sample_freq ? "HIGH" : "LOW");
		queryOtherTemperature.bindValue(":exp_time", seq);
		queryOtherTemperature.bindValue(":ground_time", time);
		queryOtherTemperature.bindValue(":exp_id", this->experiment_id);
		queryOtherTemperature.bindValue(":sensor_id", static_cast<uint32_t>(i+1));
		queryOtherTemperature.bindValue(":value", values.at(i));
		if(!queryOtherTemperature.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
	*/
}

void  StorageDatabase::logHpTemperature(uint32_t seq, const std::array<int32_t, 3>& values, bool sample_freq, const QDateTime& time)
{
	for (size_t i = 0; i < values.size(); i++) {
		queryHpTemperature.bindValue(2, sample_freq ? "HIGH" : "LOW");
		queryHpTemperature.bindValue(3, seq);
		queryHpTemperature.bindValue(4, time);
		queryHpTemperature.bindValue(5, this->experiment_id);
		queryHpTemperature.bindValue(0, static_cast<uint32_t>(i+1));
		queryHpTemperature.bindValue(1, values.at(i));
		if(!queryHpTemperature.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
}

void  StorageDatabase::logHpPenetrationDepthLS(uint32_t seq, const std::array<int32_t, 3>& values, const QDateTime& time)
{
	for (size_t i = 0; i < values.size(); i++) {
		queryHpPenetrationDepth.bindValue(2, "LOW");
		queryHpPenetrationDepth.bindValue(3, seq);
		queryHpPenetrationDepth.bindValue(4, time);
		queryHpPenetrationDepth.bindValue(5, this->experiment_id);
		queryHpPenetrationDepth.bindValue(0, static_cast<uint32_t>(i+1));
		queryHpPenetrationDepth.bindValue(1, values.at(i));
		if(!queryHpPenetrationDepth.exec()) {
			errorStrings.append(db.lastError().text());
			std::cout << db.lastError().text().toLocal8Bit().constData() << std::endl << queryHpPenetrationDepth.lastError().text().toLocal8Bit().constData() << std::endl;
			std::cout << queryHpPenetrationDepth.lastQuery().toLocal8Bit().constData() << std::endl;
		}
	}
}

void  StorageDatabase::logHpPenetrationDepthHS(uint32_t seq, const std::array<int32_t, 3>& values, const QDateTime& time)
{
	for (size_t i = 0; i < values.size(); i++) {
		queryHpPenetrationDepth.bindValue(2, "HIGH");
		queryHpPenetrationDepth.bindValue(3, seq);
		queryHpPenetrationDepth.bindValue(4, time);
		queryHpPenetrationDepth.bindValue(5, this->experiment_id);
		queryHpPenetrationDepth.bindValue(0, static_cast<uint32_t>(i+1));
		queryHpPenetrationDepth.bindValue(1, values.at(i));
		if(!queryHpPenetrationDepth.exec()) {
			errorStrings.append(db.lastError().text());
			std::cout << db.lastError().text().toLocal8Bit().constData() << std::endl << queryHpPenetrationDepth.lastError().text().toLocal8Bit().constData() << std::endl;
			std::cout << queryHpPenetrationDepth.lastQuery().toLocal8Bit().constData() << std::endl;
		}
	}
}

void  StorageDatabase::logPressureLS(uint32_t seq, const std::array<int32_t, 5>& sensor1, const std::array<int32_t, 5>& sensor2, const QDateTime& time)
{
	for (size_t i = 0; i < sensor1.size(); i++) {
		queryPressure.bindValue(3, "HIGH");
		queryPressure.bindValue(4, seq);
		queryPressure.bindValue(5, time);
		queryPressure.bindValue(6, this->experiment_id);
		queryPressure.bindValue(0, static_cast<uint32_t>(i+1));
		queryPressure.bindValue(1, sensor1.at(i));
		queryPressure.bindValue(2, 0);
		if(!queryPressure.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
	for (size_t i = 0; i < sensor2.size(); i++) {
		queryPressure.bindValue(3, "HIGH");
		queryPressure.bindValue(4, seq);
		queryPressure.bindValue(5, time);
		queryPressure.bindValue(6, this->experiment_id);
		queryPressure.bindValue(0, static_cast<uint32_t>(i+1));
		queryPressure.bindValue(1, sensor2.at(i));
		queryPressure.bindValue(2, 0);
		if(!queryPressure.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
}

void  StorageDatabase::logPressureHS(uint32_t seq, const std::array<int32_t, 20>& sensor1, const std::array<int32_t, 20>& sensor2, const QDateTime& time)
{
	for (size_t i = 0; i < sensor1.size(); i++) {
		queryPressure.bindValue(3, "HIGH");
		queryPressure.bindValue(4, seq);
		queryPressure.bindValue(5, time);
		queryPressure.bindValue(6, this->experiment_id);
		queryPressure.bindValue(0, static_cast<uint32_t>(i+1));
		queryPressure.bindValue(1, sensor1.at(i));
		queryPressure.bindValue(2, 0);
		if(!queryPressure.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
	for (size_t i = 0; i < sensor2.size(); i++) {
		queryPressure.bindValue(3, "HIGH");
		queryPressure.bindValue(4, seq);
		queryPressure.bindValue(5, time);
		queryPressure.bindValue(6, this->experiment_id);
		queryPressure.bindValue(0, static_cast<uint32_t>(i+1));
		queryPressure.bindValue(1, sensor2.at(i));
		queryPressure.bindValue(2, 0);
		if(!queryPressure.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
}

void StorageDatabase::logBattVoltageLS(uint32_t seq, uint16_t value, const QDateTime &time)
{
	queryBattVoltage.bindValue(1, "LOW");
	queryBattVoltage.bindValue(2, seq);
	queryBattVoltage.bindValue(3, time);
	queryBattVoltage.bindValue(4, this->experiment_id);
	queryBattVoltage.bindValue(0, value);
	if(!queryBattVoltage.exec()) {
		errorStrings.append(db.lastError().text());
		std::cout << db.lastError().text().toLocal8Bit().constData() << std::endl << queryBattVoltage.lastError().text().toLocal8Bit().constData() << std::endl;
		std::cout << queryBattVoltage.lastQuery().toLocal8Bit().constData() << std::endl;
		exit(1);
	}
}

void StorageDatabase::logBattVoltageHS(uint32_t seq, const std::array<uint16_t, 4> &values, const QDateTime &time)
{
	for (size_t i = 0; i < values.size(); i++) {
		queryBattVoltage.bindValue(1, "HIGH");
		queryBattVoltage.bindValue(2, seq);
		queryBattVoltage.bindValue(3, time);
		queryBattVoltage.bindValue(4, this->experiment_id);
		queryBattVoltage.bindValue(0, values.at(i));
		if(!queryBattVoltage.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
}

void StorageDatabase::logMotorCurrentLS(uint32_t seq, uint16_t value, const QDateTime &time)
{
	queryMotorCurrent.bindValue(1, "LOW");
	queryMotorCurrent.bindValue(2, seq);
	queryMotorCurrent.bindValue(3, time);
	queryMotorCurrent.bindValue(4, this->experiment_id);
	queryMotorCurrent.bindValue(0, value);
	if(!queryMotorCurrent.exec()) {
		errorStrings.append(db.lastError().text());
	}
}

void StorageDatabase::logMotorCurrentHS(uint32_t seq, const std::array<uint16_t, 4> &values, const QDateTime &time)
{
	for (size_t i = 0; i < values.size(); i++) {
		queryMotorCurrent.bindValue(1, "HIGH");
		queryMotorCurrent.bindValue(2, seq);
		queryMotorCurrent.bindValue(3, time);
		queryMotorCurrent.bindValue(4, this->experiment_id);
		queryMotorCurrent.bindValue(0, values.at(i));
		if(!queryMotorCurrent.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
}

void  StorageDatabase::logHpPower(uint32_t seq,
								  const std::array<uint16_t, 3>& voltage,
								  const std::array<uint16_t, 3>& current,
								  bool sample_freq,
								  const QDateTime& time)
{
	for (size_t i = 0; i < voltage.size(); i++) {
		queryHpPower.bindValue(3, sample_freq ? "HIGH" : "LOW");
		queryHpPower.bindValue(4, seq);
		queryHpPower.bindValue(5, time);
		queryHpPower.bindValue(6, this->experiment_id);
		queryHpPower.bindValue(0, static_cast<uint32_t>(i+1));
		queryHpPower.bindValue(1, voltage.at(i));
		queryHpPower.bindValue(2, current.at(i));
		if(!queryHpPower.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
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
								 uint32_t experimentId,
								 uint8_t piRecordingEnabled,
								 uint32_t piStorageAvailable,
								 const QDateTime& time)
{
	(void) exp_time;
	// Experiment Id
	if(this->experiment_id != experimentId) {
		std::cout << "Experiment ID changed: " << this->experiment_id << " -> " << experimentId << std::endl;
	}
	this->experiment_id = experimentId;

	// State Machine
	queryStateMachine.bindValue(0, state);
	queryStateMachine.bindValue(1, seq);
	queryStateMachine.bindValue(2, time);
	queryStateMachine.bindValue(3, this->experiment_id);
	if(!queryStateMachine.exec()) {
		errorStrings.append(db.lastError().text());
		std::cout << db.lastError().text().toLocal8Bit().constData() << std::endl << queryStateMachine.lastError().text().toLocal8Bit().constData() << std::endl;
		std::cout << queryStateMachine.lastQuery().toLocal8Bit().constData() << std::endl;
	}

	// Other Status types
	//'LO', 'SOE', 'SODS', 'TEST_MODE', 'HP_OVERTEMP', 'MOTOR_POSITION', 'PI_RECORDING', 'PI_STORAGE'
	static const QStringList status_types{"LO", "SOE", "SODS", "TEST_MODE", "HP_OVERTEMP", "MOTOR_POSITION", "PI_RECORDING", "PI_STORAGE"};
	for(int i = 0; i < status_types.size(); i++) {
		queryStatus.bindValue(0, status_types.at(i));
		switch(i) {
		case 0:
			queryStatus.bindValue(1, lo);
			break;
		case 1:
			queryStatus.bindValue(1, soe);
			break;
		case 2:
			queryStatus.bindValue(1, sods);
			break;
		case 3:
			queryStatus.bindValue(1, testModeEnabled);
			break;
		case 4:
			queryStatus.bindValue(1, hpOvertemperature);
			break;
		case 5:
			queryStatus.bindValue(1, motorPosition);
			break;
		case 6:
			queryStatus.bindValue(1, piRecordingEnabled);
			break;
		case 7:
			queryStatus.bindValue(1, piStorageAvailable);
			break;
		}
		queryStatus.bindValue(2, seq);
		queryStatus.bindValue(3, time);
		queryStatus.bindValue(4, this->experiment_id);
		if(!queryStatus.exec()) {
			errorStrings.append(db.lastError().text());
			std::cout << db.lastError().text().toLocal8Bit().constData() << std::endl << queryStatus.lastError().text().toLocal8Bit().constData() << std::endl;
			std::cout << queryStatus.lastQuery().toLocal8Bit().constData() << std::endl;
		}
	}
}
