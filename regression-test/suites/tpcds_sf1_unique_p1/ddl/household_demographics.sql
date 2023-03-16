CREATE TABLE IF NOT EXISTS household_demographics (
    hd_demo_sk bigint,
    hd_income_band_sk bigint,
    hd_buy_potential char(15),
    hd_dep_count integer,
    hd_vehicle_count integer
)
UNIQUE KEY(hd_demo_sk)
DISTRIBUTED BY HASH(hd_demo_sk) BUCKETS 1
PROPERTIES (
  "replication_num" = "1"
)

