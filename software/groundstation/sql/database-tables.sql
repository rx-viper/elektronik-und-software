CREATE TABLE IF NOT EXISTS experiment(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   id INTEGER UNIQUE NOT NULL,
   groundstation_time TIMESTAMP NOT NULL
);

DROP TYPE IF EXISTS SAMPLE_FREQ CASCADE;
CREATE TYPE SAMPLE_FREQ AS ENUM ('LOW', 'HIGH');

CREATE TABLE IF NOT EXISTS data_ice_sample_temperature(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   ice_sample_id INTEGER NOT NULL,
   sensor_id INTEGER NOT NULL,
   sample_freqency SAMPLE_FREQ NOT NULL,
   value DOUBLE PRECISION NOT NULL,
   error BOOL DEFAULT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER REFERENCES experiment(id) NOT NULL
);

CREATE TABLE IF NOT EXISTS data_heat_probe_temperature(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   sensor_id INTEGER NOT NULL,
   sample_freqency SAMPLE_FREQ,
   value DOUBLE PRECISION NOT NULL,
   error BOOL DEFAULT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER REFERENCES experiment(id) NOT NULL
);

CREATE TABLE IF NOT EXISTS data_other_temperature(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   sensor_id INTEGER NOT NULL,
   sample_freqency SAMPLE_FREQ,
   value DOUBLE PRECISION NOT NULL,
   error BOOL DEFAULT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER REFERENCES experiment(id) NOT NULL
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
   experiment_id INTEGER REFERENCES experiment(id) NOT NULL
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
   experiment_id INTEGER REFERENCES experiment(id) NOT NULL
);

CREATE TABLE IF NOT EXISTS data_pressure(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   sensor_id INTEGER NOT NULL,
   sample_freqency SAMPLE_FREQ,
   pressure DOUBLE PRECISION NOT NULL,
   temperature DOUBLE PRECISION NOT NULL,
   error BOOL DEFAULT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER REFERENCES experiment(id) NOT NULL
);

DROP TYPE IF EXISTS EVENT_FLAG CASCADE;
CREATE TYPE EVENT_FLAG AS ENUM ('LO', 'SOE', 'SODS', 'TEST_MODE', 'HP_OVERTEMP');
CREATE TABLE IF NOT EXISTS data_status_flags(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   sensor_id EVENT_FLAG NOT NULL,
   value BOOL NOT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER REFERENCES experiment(id) NOT NULL
);

CREATE TABLE IF NOT EXISTS data_state_machine(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   state INTEGER NOT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER REFERENCES experiment(id) NOT NULL
);

DROP TYPE IF EXISTS SER_DIRECTION CASCADE;
CREATE TYPE SER_DIRECTION AS ENUM ('RX', 'TX');
CREATE TABLE IF NOT EXISTS raw_data(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   groundstation_time TIMESTAMP NOT NULL,
   serial_data BYTEA NOT NULL,
   direction SER_DIRECTION DEFAULT 'RX'
);

CREATE TABLE IF NOT EXISTS data_heat_probe_power(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   sensor_id INTEGER NOT NULL,
   sample_freqency SAMPLE_FREQ,
   voltage DOUBLE PRECISION NOT NULL,
   current DOUBLE PRECISION NOT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER REFERENCES experiment(id) NOT NULL
);

CREATE TABLE IF NOT EXISTS data_motor_current(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   sensor_id INTEGER NOT NULL,
   sample_freqency SAMPLE_FREQ,
   value DOUBLE PRECISION NOT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER REFERENCES experiment(id) NOT NULL
);

CREATE TABLE IF NOT EXISTS data_battery_voltage(
   _id BIGSERIAL PRIMARY KEY,
   _database_time TIMESTAMP NOT NULL DEFAULT NOW(),
   sensor_id INTEGER NOT NULL,
   sample_freqency SAMPLE_FREQ,
   value DOUBLE PRECISION NOT NULL,
   experiment_time INTEGER NOT NULL,
   groundstation_time TIMESTAMP NOT NULL,
   experiment_id INTEGER REFERENCES experiment(id) NOT NULL
);
