CREATE DATABASE IF NOT EXISTS spark_hms_db;
CREATE TABLE IF NOT EXISTS spark_hms_db.types ( hms_int INT, hms_smallint SMALLINT, hms_bigint BIGINT, hms_double DOUBLE, hms_string STRING, hms_decimal DECIMAL(12,4), hms_char CHAR(50), hms_varchar VARCHAR(50), hms_bool BOOLEAN, hms_timstamp TIMESTAMP, hms_date DATE ) using parquet;
CREATE TABLE IF NOT EXISTS spark_hms_db.types_one_part ( hms_int INT, hms_smallint SMALLINT, hms_bigint BIGINT, hms_double DOUBLE, hms_string STRING, hms_decimal DECIMAL(12,4), hms_char CHAR(50), hms_varchar VARCHAR(50), hms_bool BOOLEAN, hms_timstamp TIMESTAMP, hms_date DATE ) using parquet partitioned by (dt string);
CREATE TABLE IF NOT EXISTS spark_hms_db.types_multi_part ( hms_int INT, hms_smallint SMALLINT, hms_bigint BIGINT, hms_double DOUBLE, hms_string STRING, hms_decimal DECIMAL(12,4), hms_char CHAR(50), hms_varchar VARCHAR(50), hms_bool BOOLEAN ) using parquet partitioned by (dt string, hms_timstamp TIMESTAMP, hms_date DATE);

--CREATE DATABASE IF NOT EXISTS iceberg.spark_iceberg_db_hms;
--CREATE TABLE IF NOT EXISTS iceberg.spark_iceberg_db_hms.types ( hms_int INT, hms_smallint SMALLINT, hms_bigint BIGINT, hms_double DOUBLE, hms_string STRING, hms_decimal DECIMAL(12,4), hms_char CHAR(50), hms_varchar VARCHAR(50), hms_bool BOOLEAN, hms_timstamp TIMESTAMP, hms_date DATE ) USING iceberg TBLPROPERTIES ( 'format-version'='2');
--CREATE TABLE IF NOT EXISTS iceberg.spark_iceberg_db_hms.types_one_part ( hms_int INT, hms_smallint SMALLINT, hms_bigint BIGINT, hms_double DOUBLE, hms_string STRING, hms_decimal DECIMAL(12,4), hms_char CHAR(50), hms_varchar VARCHAR(50), hms_bool BOOLEAN, hms_timstamp TIMESTAMP, hms_date DATE ) PARTITIONED BY (dt STRING) USING iceberg TBLPROPERTIES ( 'format-version'='2');
--CREATE TABLE IF NOT EXISTS iceberg.spark_iceberg_db_hms.types_multi_part ( hms_int INT, hms_smallint SMALLINT, hms_bigint BIGINT, hms_double DOUBLE, hms_string STRING, hms_decimal DECIMAL(12,4), hms_char CHAR(50), hms_varchar VARCHAR(50), hms_bool BOOLEAN ) PARTITIONED BY (dt STRING, hms_timstamp TIMESTAMP, hms_date DATE) USING iceberg TBLPROPERTIES ( 'format-version'='2');