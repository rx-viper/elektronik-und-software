DROP TYPE IF EXISTS SAMPLE_FREQ CASCADE;
CREATE TYPE SAMPLE_FREQ AS ENUM ('LOW', 'HIGH');

CREATE TABLE IF NOT EXISTS data_ice_sample_temperature(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   ice_sample_id INTEGER NOT NULL,
   sensor_id INTEGER NOT NULL,
   sample_freqency SAMPLE_FREQ NOT NULL,
   value INTEGER NOT NULL,
   error BOOL DEFAULT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS data_heat_probe_temperature(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   sensor_id INTEGER NOT NULL,
   sample_freqency SAMPLE_FREQ,
   value INTEGER NOT NULL,
   error BOOL DEFAULT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS data_other_temperature(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   sensor_id INTEGER NOT NULL,
   sample_freqency SAMPLE_FREQ,
   value INTEGER NOT NULL,
   error BOOL DEFAULT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS data_heat_probe_penetration_depth(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   sensor_id INTEGER NOT NULL,
   sample_freqency SAMPLE_FREQ,
   value INTEGER NOT NULL,
   error BOOL DEFAULT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS data_motor_position(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   sensor_id INTEGER NOT NULL,
   sample_freqency SAMPLE_FREQ,
   value INTEGER NOT NULL,
   error BOOL DEFAULT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS data_pressure(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   sensor_id INTEGER NOT NULL,
   sample_freqency SAMPLE_FREQ,
   pressure INTEGER NOT NULL,
   temperature INTEGER NOT NULL,
   error BOOL DEFAULT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER NOT NULL
);

DROP TYPE IF EXISTS STATUS_TYPES CASCADE;
CREATE TYPE STATUS_TYPES AS ENUM ('LO', 'SOE', 'SODS', 'TEST_MODE', 'HP_OVERTEMP', 'MOTOR_POSITION', 'PI_RECORDING', 'PI_STORAGE');
CREATE TABLE IF NOT EXISTS data_status(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   sensor_id STATUS_TYPES NOT NULL,
   value INTEGER NOT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS data_state_machine(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   state INTEGER NOT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER NOT NULL
);

DROP TYPE IF EXISTS SER_DIRECTION CASCADE;
CREATE TYPE SER_DIRECTION AS ENUM ('RX', 'TX');
CREATE TABLE IF NOT EXISTS raw_data(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   groundstation_time TIMESTAMP NOT NULL,
   serial_data TEXT NOT NULL,
   direction SER_DIRECTION DEFAULT 'RX'
);

CREATE TABLE IF NOT EXISTS data_heat_probe_power(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   sensor_id INTEGER NOT NULL,
   sample_freqency SAMPLE_FREQ,
   voltage INTEGER NOT NULL,
   current INTEGER NOT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS data_motor_current(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   sample_freqency SAMPLE_FREQ,
   value INTEGER NOT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS data_battery_voltage(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   sample_freqency SAMPLE_FREQ,
   value INTEGER NOT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER NOT NULL
);
