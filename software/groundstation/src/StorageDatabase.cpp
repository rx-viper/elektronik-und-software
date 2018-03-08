#include "StorageDatabase.hpp"
#include <iostream>

StorageDatabase::StorageDatabase(QSqlDatabase& db_) :
	db{db_}
{
}

void StorageDatabase::prepareQueries() {
	if(!queryRawData.prepare("INSERT INTO raw_data (groundstation_time, serial_data, direction) VALUES (:time, :data, 'RX')"))
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
								   "(sensor_id, value, sample_freqency, experiment_time, groundstation_time, "
								   "experiment_id) "
								   "SELECT v.sensor_id, v.value, :freq, :exp_time, :ground_time, :exp_id "
								   "FROM ( "
								   "SELECT 0 AS sensor_id, :value0 as value FROM DUAL UNION ALL "
								   "SELECT 1 AS sensor_id, :value1 as value FROM DUAL UNION ALL "
								   "SELECT 2 AS sensor_id, :value2 as value FROM DUAL "
								   ") v"
								   ))
	{
		errorStrings.append(db.lastError().text());
		errorStrings.append(queryRawData.lastError().text());
		errorStrings.append(db.driver()->lastError().text());
	}
	if(!queryHpPenetrationDepth.prepare("INSERT INTO data_heat_probe_penetration_depth "
								   "(sensor_id, value, sample_freqency, experiment_time, groundstation_time, "
								   "experiment_id) "
								   "SELECT v.sensor_id, v.value, :freq, :exp_time, :ground_time, :exp_id "
								   "FROM ( "
								   "SELECT 0 AS sensor_id, :value0 as value FROM DUAL UNION ALL "
								   "SELECT 1 AS sensor_id, :value1 as value FROM DUAL UNION ALL "
								   "SELECT 2 AS sensor_id, :value2 as value FROM DUAL "
								   ") v"
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
	queryIceTemperature.bindValue(":exp_id", this->experiment_id);
	for (size_t i = 0; i < 3; i++)
		for (size_t j = 0; i < 9; i++)
			queryIceTemperature.bindValue(QString(":value{}{}").arg(i, j), values.at(i * 9 + j));
	if(!queryIceTemperature.exec()) {
		errorStrings.append(db.lastError().text());
	}
}

void  StorageDatabase::logOtherTemperature(uint32_t seq, const std::array<int16_t, 5>& values, bool sample_freq, const QDateTime& time)
{
	for (size_t i = 0; i < values.size(); i++) {
		queryOtherTemperature.bindValue(":freq", sample_freq ? "'HIGH'" : "'LOW'");
		queryOtherTemperature.bindValue(":exp_time", seq);
		queryOtherTemperature.bindValue(":ground_time", time);
		queryOtherTemperature.bindValue(":exp_id", this->experiment_id);
		queryOtherTemperature.bindValue(":sensor_id", static_cast<uint32_t>(i+1));
		queryOtherTemperature.bindValue(":value", values.at(i));
		if(!queryOtherTemperature.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
}

void  StorageDatabase::logHpTemperature(uint32_t seq, const std::array<int32_t, 3>& values, bool sample_freq, const QDateTime& time)
{
	for (size_t i = 0; i < values.size(); i++) {
		queryHpTemperature.bindValue(":freq", sample_freq ? "'HIGH'" : "'LOW'");
		queryHpTemperature.bindValue(":exp_time", seq);
		queryHpTemperature.bindValue(":ground_time", time);
		queryHpTemperature.bindValue(":exp_id", this->experiment_id);
		queryHpTemperature.bindValue(":sensor_id", static_cast<uint32_t>(i+1));
		queryHpTemperature.bindValue(":value", values.at(i));
		if(!queryHpTemperature.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
}

void  StorageDatabase::logHpPenetrationDepthLS(uint32_t seq, const std::array<int32_t, 3>& values, const QDateTime& time)
{
	for (size_t i = 0; i < values.size(); i++) {
		queryHpPenetrationDepth.bindValue(":freq", "'LOW'");
		queryHpPenetrationDepth.bindValue(":exp_time", seq);
		queryHpPenetrationDepth.bindValue(":ground_time", time);
		queryHpPenetrationDepth.bindValue(":exp_id", this->experiment_id);
		queryHpPenetrationDepth.bindValue(":sensor_id", static_cast<uint32_t>(i+1));
		queryHpPenetrationDepth.bindValue(":value", values.at(i));
		if(!queryHpPenetrationDepth.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
}

void  StorageDatabase::logHpPenetrationDepthHS(uint32_t seq, const std::array<int32_t, 3>& values, const QDateTime& time)
{
	for (size_t i = 0; i < values.size(); i++) {
		queryHpPenetrationDepth.bindValue(":freq", "'HIGH'");
		queryHpPenetrationDepth.bindValue(":exp_time", seq);
		queryHpPenetrationDepth.bindValue(":ground_time", time);
		queryHpPenetrationDepth.bindValue(":exp_id", this->experiment_id);
		queryHpPenetrationDepth.bindValue(":sensor_id", static_cast<uint32_t>(i+1));
		queryHpPenetrationDepth.bindValue(":value", values.at(i));
		if(!queryHpPenetrationDepth.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
}

void  StorageDatabase::logPressureLS(uint32_t seq, const std::array<int32_t, 5>& sensor1, const std::array<int32_t, 5>& sensor2, const QDateTime& time)
{
	for (size_t i = 0; i < sensor1.size(); i++) {
		queryPressure.bindValue(":freq", "'LOW'");
		queryPressure.bindValue(":exp_time", seq);
		queryPressure.bindValue(":ground_time", time);
		queryPressure.bindValue(":exp_id", this->experiment_id);
		queryPressure.bindValue(":sensor_id", static_cast<uint32_t>(i+1));
		queryPressure.bindValue(":value", sensor1.at(i));
		if(!queryPressure.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
	for (size_t i = 0; i < sensor2.size(); i++) {
		queryPressure.bindValue(":freq", "'LOW'");
		queryPressure.bindValue(":exp_time", seq);
		queryPressure.bindValue(":ground_time", time);
		queryPressure.bindValue(":exp_id", this->experiment_id);
		queryPressure.bindValue(":sensor_id", static_cast<uint32_t>(i+1));
		queryPressure.bindValue(":value", sensor2.at(i));
		if(!queryPressure.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
}

void  StorageDatabase::logPressureHS(uint32_t seq, const std::array<int32_t, 20>& sensor1, const std::array<int32_t, 20>& sensor2, const QDateTime& time)
{
	for (size_t i = 0; i < sensor1.size(); i++) {
		queryPressure.bindValue(":freq", "'HIGH'");
		queryPressure.bindValue(":exp_time", seq);
		queryPressure.bindValue(":ground_time", time);
		queryPressure.bindValue(":exp_id", this->experiment_id);
		queryPressure.bindValue(":sensor_id", static_cast<uint32_t>(i+1));
		queryPressure.bindValue(":value", sensor1.at(i));
		if(!queryPressure.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
	for (size_t i = 0; i < sensor2.size(); i++) {
		queryPressure.bindValue(":freq", "'HIGH'");
		queryPressure.bindValue(":exp_time", seq);
		queryPressure.bindValue(":ground_time", time);
		queryPressure.bindValue(":exp_id", this->experiment_id);
		queryPressure.bindValue(":sensor_id", static_cast<uint32_t>(i+1));
		queryPressure.bindValue(":value", sensor2.at(i));
		if(!queryPressure.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
}

void StorageDatabase::logBattVoltageLS(uint32_t seq, uint16_t value, const QDateTime &time)
{
	queryBattVoltage.bindValue(":freq", "'LOW'");
	queryBattVoltage.bindValue(":exp_time", seq);
	queryBattVoltage.bindValue(":ground_time", time);
	queryBattVoltage.bindValue(":exp_id", this->experiment_id);
	queryBattVoltage.bindValue(":value", value);
	if(!queryBattVoltage.exec()) {
		errorStrings.append(db.lastError().text());
	}
}

void StorageDatabase::logBattVoltageHS(uint32_t seq, const std::array<uint16_t, 4> &values, const QDateTime &time)
{
	for (size_t i = 0; i < values.size(); i++) {
		queryBattVoltage.bindValue(":freq", "'HIGH'");
		queryBattVoltage.bindValue(":exp_time", seq);
		queryBattVoltage.bindValue(":ground_time", time);
		queryBattVoltage.bindValue(":exp_id", this->experiment_id);
		queryBattVoltage.bindValue(":value", values.at(i));
		if(!queryBattVoltage.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
}

void StorageDatabase::logMotorCurrentLS(uint32_t seq, uint16_t value, const QDateTime &time)
{
	queryMotorCurrent.bindValue(":freq", "'LOW'");
	queryMotorCurrent.bindValue(":exp_time", seq);
	queryMotorCurrent.bindValue(":ground_time", time);
	queryMotorCurrent.bindValue(":exp_id", this->experiment_id);
	queryMotorCurrent.bindValue(":value", value);
	if(!queryMotorCurrent.exec()) {
		errorStrings.append(db.lastError().text());
	}
}

void StorageDatabase::logMotorCurrentHS(uint32_t seq, const std::array<uint16_t, 4> &values, const QDateTime &time)
{
	for (size_t i = 0; i < values.size(); i++) {
		queryMotorCurrent.bindValue(":freq", "'HIGH'");
		queryMotorCurrent.bindValue(":exp_time", seq);
		queryMotorCurrent.bindValue(":ground_time", time);
		queryMotorCurrent.bindValue(":exp_id", this->experiment_id);
		queryMotorCurrent.bindValue(":value", values.at(i));
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
		queryHpPower.bindValue(":freq", sample_freq ? "'HIGH'" : "'LOW'");
		queryHpPower.bindValue(":exp_time", seq);
		queryHpPower.bindValue(":ground_time", time);
		queryHpPower.bindValue(":exp_id", this->experiment_id);
		queryHpPower.bindValue(":sensor_id", static_cast<uint32_t>(i+1));
		queryHpPower.bindValue(":voltage", voltage.at(i));
		queryHpPower.bindValue(":current", current.at(i));
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
	queryStateMachine.bindValue(":state", state);
	queryStateMachine.bindValue(":exp_time", seq);
	queryStateMachine.bindValue(":ground_time", time);
	queryStateMachine.bindValue(":exp_id", this->experiment_id);
	if(!queryStateMachine.exec()) {
		errorStrings.append(db.lastError().text());
	}

	// Other Status types
	//'LO', 'SOE', 'SODS', 'TEST_MODE', 'HP_OVERTEMP', 'MOTOR_POSITION', 'PI_RECORDING', 'PI_STORAGE'
	static const QStringList status_types{"'LO'", "'SOE'", "'SODS'", "'TEST_MODE'", "'HP_OVERTEMP'", "'MOTOR_POSITION'", "'PI_RECORDING'", "'PI_STORAGE'"};
	for(int i = 0; i < status_types.size(); i++) {
		queryStatus.bindValue(":sensor_id", status_types.at(i));
		switch(i) {
		case 0:
			queryStatus.bindValue(":value", lo);
			break;
		case 1:
			queryStatus.bindValue(":value", soe);
			break;
		case 2:
			queryStatus.bindValue(":value", sods);
			break;
		case 3:
			queryStatus.bindValue(":value", testModeEnabled);
			break;
		case 4:
			queryStatus.bindValue(":value", hpOvertemperature);
			break;
		case 5:
			queryStatus.bindValue(":value", motorPosition);
			break;
		case 6:
			queryStatus.bindValue(":value", piRecordingEnabled);
			break;
		case 7:
			queryStatus.bindValue(":value", piStorageAvailable);
			break;
		}
		queryStatus.bindValue(":exp_time", seq);
		queryStatus.bindValue(":ground_time", time);
		queryStatus.bindValue(":exp_id", this->experiment_id);
		if(!queryStatus.exec()) {
			errorStrings.append(db.lastError().text());
		}
	}
}
