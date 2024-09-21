create database if not exists multi_catalog;

use multi_catalog;

CREATE TABLE `byd`(
  `id` int, 
  `capacity` array<double>, 
  `singles` map<string,double>, 
  `favor` struct<name:string,age:int,tip:timestamp>)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  '/user/doris/suites/multi_catalog/byd'
TBLPROPERTIES (
  'transient_lastDdlTime'='1690356922');

msck repair table byd;

CREATE TABLE `complex_offsets_check`(
  `id` int, 
  `array1` array<int>, 
  `array2` array<array<int>>, 
  `map1` map<string,int>, 
  `struct1` struct<s1:string,s2:int>)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  '/user/doris/suites/multi_catalog/complex_offsets_check'
TBLPROPERTIES (
  'transient_lastDdlTime'='1690974653');

msck repair table complex_offsets_check;

CREATE TABLE `parquet_all_types`(
  `t_null_string` string, 
  `t_null_varchar` varchar(65535), 
  `t_null_char` char(10), 
  `t_null_decimal_precision_2` decimal(2,1), 
  `t_null_decimal_precision_4` decimal(4,2), 
  `t_null_decimal_precision_8` decimal(8,4), 
  `t_null_decimal_precision_17` decimal(17,8), 
  `t_null_decimal_precision_18` decimal(18,8), 
  `t_null_decimal_precision_38` decimal(38,16), 
  `t_empty_string` string, 
  `t_string` string, 
  `t_empty_varchar` varchar(65535), 
  `t_varchar` varchar(65535), 
  `t_varchar_max_length` varchar(65535), 
  `t_char` char(10), 
  `t_int` int, 
  `t_bigint` bigint, 
  `t_float` float, 
  `t_double` double, 
  `t_boolean_true` boolean, 
  `t_boolean_false` boolean, 
  `t_decimal_precision_2` decimal(2,1), 
  `t_decimal_precision_4` decimal(4,2), 
  `t_decimal_precision_8` decimal(8,4), 
  `t_decimal_precision_17` decimal(17,8), 
  `t_decimal_precision_18` decimal(18,8), 
  `t_decimal_precision_38` decimal(38,16), 
  `t_binary` binary, 
  `t_map_string` map<string,string>, 
  `t_map_varchar` map<varchar(65535),varchar(65535)>, 
  `t_map_char` map<char(10),char(10)>, 
  `t_map_int` map<int,int>, 
  `t_map_bigint` map<bigint,bigint>, 
  `t_map_float` map<float,float>, 
  `t_map_double` map<double,double>, 
  `t_map_boolean` map<boolean,boolean>, 
  `t_map_decimal_precision_2` map<decimal(2,1),decimal(2,1)>, 
  `t_map_decimal_precision_4` map<decimal(4,2),decimal(4,2)>, 
  `t_map_decimal_precision_8` map<decimal(8,4),decimal(8,4)>, 
  `t_map_decimal_precision_17` map<decimal(17,8),decimal(17,8)>, 
  `t_map_decimal_precision_18` map<decimal(18,8),decimal(18,8)>, 
  `t_map_decimal_precision_38` map<decimal(38,16),decimal(38,16)>, 
  `t_array_string` array<string>, 
  `t_array_int` array<int>, 
  `t_array_bigint` array<bigint>, 
  `t_array_float` array<float>, 
  `t_array_double` array<double>, 
  `t_array_boolean` array<boolean>, 
  `t_array_varchar` array<varchar(65535)>, 
  `t_array_char` array<char(10)>, 
  `t_array_decimal_precision_2` array<decimal(2,1)>, 
  `t_array_decimal_precision_4` array<decimal(4,2)>, 
  `t_array_decimal_precision_8` array<decimal(8,4)>, 
  `t_array_decimal_precision_17` array<decimal(17,8)>, 
  `t_array_decimal_precision_18` array<decimal(18,8)>, 
  `t_array_decimal_precision_38` array<decimal(38,16)>, 
  `t_struct_bigint` struct<s_bigint:bigint>, 
  `t_complex` map<string,array<struct<s_int:int>>>, 
  `t_struct_nested` struct<struct_field:array<string>>, 
  `t_struct_null` struct<struct_field_null:string,struct_field_null2:string>, 
  `t_struct_non_nulls_after_nulls` struct<struct_non_nulls_after_nulls1:int,struct_non_nulls_after_nulls2:string>, 
  `t_nested_struct_non_nulls_after_nulls` struct<struct_field1:int,struct_field2:string,strict_field3:struct<nested_struct_field1:int,nested_struct_field2:string>>, 
  `t_map_null_value` map<string,string>, 
  `t_array_string_starting_with_nulls` array<string>, 
  `t_array_string_with_nulls_in_between` array<string>, 
  `t_array_string_ending_with_nulls` array<string>, 
  `t_array_string_all_nulls` array<string>)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  '/user/doris/suites/multi_catalog/parquet_all_types'
TBLPROPERTIES (
  'transient_lastDdlTime'='1692347490');

msck repair table parquet_all_types;

CREATE TABLE `date_dict`(
  `date1` date, 
  `date2` date, 
  `date3` date)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  '/user/doris/suites/multi_catalog/date_dict'
TBLPROPERTIES (
  'transient_lastDdlTime'='1693396885');

msck repair table date_dict;
