-- https://github.com/apache/incubator-doris/issues/3828
drop database if exists issue_3828

create database issue_3828
use issue_3828
-- create table
DROP TABLE IF EXISTS `t1`

create table t1 (id int, user_id bitmap bitmap_union) aggregate key(`id`) distributed by hash(`id`) buckets 1 properties("replication_num"="1")

insert into t1 (id, user_id) values (1, to_bitmap(null))
insert into t1 (id, user_id) values (2, to_bitmap(null))
insert into t1 (id, user_id) values (3, bitmap_empty())
insert into t1 (id, user_id) values (4, to_bitmap(''))

select * from t1

drop database issue_3828
