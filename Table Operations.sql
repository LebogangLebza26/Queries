-- Databricks notebook source
--Creating a database in databricks
CREATE CATALOG IF NOT EXISTS june_intake;

USE CATALOG june_intake;

--This code is used to create a schema within a database
CREATE SCHEMA IF NOT EXISTS student_profiles;

CREATE OR REPLACE TABLE june_intake.student_profiles.student_data (
  student_id INT,
  name STRING,
  age INT,
  email STRING,
  registration_DT DATE
);

SELECT
  *
FROM
  june_intake.student_profiles.student_data;




--Inserting values into the table we have created
INSERT INTO june_intake.student_profiles.student_data 
VALUES(101, 'Rochester Jones', 28, 'rochestergoggle.com', '2019-06-05'),
      (102, 'Lebza Kelvin', 18, 'lebzakelvin.com', '2026-07-11'),
      (103, 'Cassper Zuma', 73, 'cassperzuma.com', '2020-01-12'),
      (104, 'Mbali Hlapo', 41, 'mbalicleaning.com', '2010-01-12')


SELECT *
FROM june_intake.student_profiles.student_data;

--Database.Schema.Table_name
--The delete function is used to remove specific rows from our data based on the specific condition
DELETE FROM
  june_intake.student_profiles.student_data
WHERE
  age > 50;

SELECT
  *
FROM
  june_intake.student_profiles.student_data;

UPDATE
  june_intake.student_profiles.student_data
SET
  age = 25
WHERE
  student_id IN (101);

SELECT
  *
FROM
  june_intake.student_profiles.student_data;

ALTER TABLE
  june_intake.student_profiles.student_data
SET TBLPROPERTIES
  (
    'delta.columnMapping.mode' = 'name',
    'delta.minReaderVersion' = '2',
    'delta.minWriterVersion' = '5'
  );

ALTER TABLE
  june_intake.student_profiles.student_data
DROP COLUMN
  registration_DT;--Creating a database in databricks
CREATE CATALOG IF NOT EXISTS june_intake;

USE CATALOG june_intake;

--This code is used to create a schema within a database
CREATE SCHEMA IF NOT EXISTS student_profiles;

CREATE OR REPLACE TABLE june_intake.student_profiles.student_data (
  student_id INT,
  name STRING,
  age INT,
  email STRING,
  registration_DT DATE
);

SELECT
  *
FROM
  june_intake.student_profiles.student_data;




--Inserting values into the table we have created
INSERT INTO june_intake.student_profiles.student_data 
VALUES(101, 'Rochester Jones', 28, 'rochestergoggle.com', '2019-06-05'),
      (102, 'Lebza Kelvin', 18, 'lebzakelvin.com', '2026-07-11'),
      (103, 'Cassper Zuma', 73, 'cassperzuma.com', '2020-01-12'),
      (104, 'Mbali Hlapo', 41, 'mbalicleaning.com', '2010-01-12')


SELECT *
FROM june_intake.student_profiles.student_data;

--Database.Schema.Table_name
--The delete function is used to remove specific rows from our data based on the specific condition
DELETE FROM
  june_intake.student_profiles.student_data
WHERE
  age > 50;

SELECT
  *
FROM
  june_intake.student_profiles.student_data;

UPDATE
  june_intake.student_profiles.student_data
SET
  age = 25
WHERE
  student_id IN (101);

SELECT
  *
FROM
  june_intake.student_profiles.student_data;

ALTER TABLE
  june_intake.student_profiles.student_data
SET TBLPROPERTIES
  (
    'delta.columnMapping.mode' = 'name',
    'delta.minReaderVersion' = '2',
    'delta.minWriterVersion' = '5'
  );

ALTER TABLE
  june_intake.student_profiles.student_data
DROP COLUMN
  registration_DT;
