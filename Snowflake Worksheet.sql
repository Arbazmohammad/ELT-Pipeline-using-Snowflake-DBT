{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 use role accountadmin;\
\
create warehouse dbt_wh with warehouse_size = 'x-small';\
\
create database if not exists dbt_db;\
\
create role if not exists dbt_role;\
\
show grants on warehouse dbt_wh;\
\
grant usage on warehouse dbt_wh to role dbt_role;\
\
grant role dbt_role to user ARBAZMOHAMMAD;\
\
grant all on database dbt_db to role dbt_role;\
\
use role dbt_role;\
\
create schema dbt_db.dbt_schema;\
\
-- drop database dbt_db;\
\
use role accountadmin;\
\
grant usage on database snowflake_sample_data to role dbt_role;\
grant usage on schema snowflake_sample_data.tpch_f1 to role dbt_role;\
\
show schemas in database snowflake_sample_data;\
\
SELECT CURRENT_ROLE();\
USE ROLE SYSADMIN;\
\
SELECT * FROM snowflake_sample_data.tpch_f1.orders LIMIT 10;\
SHOW ROLES LIKE 'dbt_role';\
\
USE ROLE ACCOUNTADMIN;\
\
GRANT USAGE ON DATABASE snowflake_sample_data TO ROLE DBT_ROLE;\
GRANT USAGE ON SCHEMA snowflake_sample_data.tpch_f1 TO ROLE DBT_ROLE;\
SHOW DATABASES LIKE 'SNOWFLAKE_SAMPLE_DATA';\
\
-----------------\
\
select * from DBT_DB.DBT_SCHEMA.FCT_ORDERS;\
\
\
select distinct O_ORDERSTATUS from SNOWFLAKE_SAMPLE_DATA.TPCH_SF10.ORDERS;\
\
\
\
\
\
\
}