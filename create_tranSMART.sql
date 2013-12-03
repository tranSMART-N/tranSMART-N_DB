

-- ***********************
-- create database
-- ***********************
create database transmart;


-- ***************
-- create users
-- ***************
\c transmart
create user biomart with password 'biomart';
create user biomart_user with password 'biomart_user';
create user deapp with password 'deapp';
create user searchapp with password 'searchapp';

create user i2b2pm with password 'i2b2pm';
create user i2b2demodata with password 'i2b2demodata';
create user i2b2hive with password 'i2b2hive';
create user i2b2metadata with password 'i2b2metadata';
create user i2b2workdata with password 'i2b2workdata';
create user i2b2sampledata with password 'i2b2sampledata';

create user tm_lz with password 'tm_lz';
create user tm_cz with password 'tm_cz';
create user tm_wz with password 'tm_wz';


-- ***********************
-- create schema
-- ***********************
\c transmart
create schema biomart authorization biomart;
create schema biomart_user authorization biomart_user;
create schema deapp authorization deapp;
create schema searchapp authorization searchapp;
create schema i2b2pm authorization i2b2pm;
create schema i2b2hive authorization i2b2hive;
create schema i2b2metadata authorization i2b2metadata;
create schema i2b2demodata authorization i2b2demodata;
create schema i2b2sampledata authorization i2b2sampledata;
create schema i2b2workdata authorization i2b2workdata;
create schema tm_lz authorization tm_lz;
create schema tm_cz authorization tm_cz;
create schema tm_wz authorization tm_wz;


-- ***********************
-- create group
-- ***********************
create group transmartdb;


-- *************************************
-- add users to the group
-- *************************************
alter group transmartdb add user BIOMART;
alter group transmartdb add user BIOMART_USER;
alter group transmartdb add user DEAPP;
alter group transmartdb add user I2B2DEMODATA;
alter group transmartdb add user I2B2HIVE;
alter group transmartdb add user I2B2METADATA;
alter group transmartdb add user I2B2PM;
alter group transmartdb add user I2B2WORKDATA;
alter group transmartdb add user SEARCHAPP;
alter group transmartdb add user I2B2SAMPLEDATA;
alter group transmartdb add user TM_LZ;
alter group transmartdb add user TM_CZ;
alter group transmartdb add user TM_WZ;


-- *************************************
-- add permissions to the group
-- *************************************
grant select on transmart.all.table to transmartdb;
grant all on table to transmartdb with grant option;
grant all on sequence to transmartdb with grant option;
grant all on synonym to transmartdb with grant option;
grant all on temp table to transmartdb with grant option;
grant all on procedure to transmartdb with grant option;
grant all on view to transmartdb with grant option;
grant all on function to transmartdb with grant option;
grant all on external table to transmartdb with grant option;
grant create table, create synonym, create sequence, create synonym, create temp table, create procedure, create view, create function, create external table to transmartdb;



SELECT 'create synonym '||table_name||' for '||table_schema||'.'||table_name||';'
FROM information_schema.tables
where table_schema in ('BIOMART', 'DEAPP', 'I2B2DEMODATA', 'I2B2HIVE', 'I2B2METADATA', 'I2B2PM', 'I2B2WORKDATA', 'SEARCHAPP');

SELECT 'create synonym '||sequence_name||' for '||sequence_schema||'.'||sequence_name||';'
FROM information_schema.sequences
where table_schema in ('BIOMART', 'DEAPP', 'I2B2DEMODATA', 'I2B2HIVE', 'I2B2METADATA', 'I2B2PM', 'I2B2WORKDATA', 'SEARCHAPP');

SELECT 'create synonym '||table_name||' for '||table_schema||'.'||table_name||';'
FROM information_schema.views
where table_schema in ('BIOMART', 'DEAPP', 'I2B2DEMODATA', 'I2B2HIVE', 'I2B2METADATA', 'I2B2PM', 'I2B2WORKDATA', 'SEARCHAPP');


\o reassign_owner.sql

SELECT 'alter table '||table_schema||'.'||table_name||' owner to '||table_schema||';'
FROM information_schema.tables
where table_schema in ('BIOMART', 'DEAPP', 'I2B2DEMODATA', 'I2B2HIVE', 'I2B2METADATA', 'I2B2PM', 'I2B2WORKDATA', 'SEARCHAPP');

SELECT 'alter sequence '||sequence_schema||'.'||sequence_name||' owner to '||sequence_schema||';'
FROM information_schema.sequences
where sequence_schema in ('BIOMART', 'DEAPP', 'I2B2DEMODATA', 'I2B2HIVE', 'I2B2METADATA', 'I2B2PM', 'I2B2WORKDATA', 'SEARCHAPP');

SELECT 'alter view '||table_schema||'.'||table_name||' owner to '||table_schema||';'
FROM information_schema.views
where table_schema in ('BIOMART', 'DEAPP', 'I2B2DEMODATA', 'I2B2HIVE', 'I2B2METADATA', 'I2B2PM', 'I2B2WORKDATA', 'SEARCHAPP');

\i  reassign_owner.sql

\o s.sql
select 'alter synonym ' || synonym_name || ' owner to biomart_user;'
from definition_schema._v_synonym
where schema='BIOMART_USER';
\i s.sql


