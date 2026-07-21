-- Databricks notebook source
-- Creating a database in databricks
CREATE CATALOG IF NOT EXISTS june_intake;

USE CATALOG june_intake;

CREATE SCHEMA IF NOT EXISTS students_profile;

-- To drop is to delete : this code is to delete the schema
DROP SCHEMA students_profile;

-- This code is used to creat a schema within a database
CREATE SCHEMA IF NOT EXISTS students;

-- This code is to create a table in our database and given schema
CREATE OR REPLACE TABLE june_intake.students.profiles (
    student_id INT,
    name STRING,
    surname STRING,
    age INT,
    email STRING,
    registration_DT DATE
);

SELECT *
FROM june_intake.students.profiles;

-- Inserting Values into the table that we have created
INSERT INTO june_intake.students.profiles
 VALUES 
    (101,'Rochester', 'Jones', 28, 'rochester@google.com', '2019-06-05'),
    (102,'Sive', 'Magazi', 33, 'sive@phalaphala.com', '1912-01-01'),
    (103,'Cassper', 'Zuma', 73, 'czuma@kandla.com', '2020-01-12'),
    (104,'Mbali', 'Hlapo', 41, 'mbali@cleaaning.com', '2010-01-12')
;

SELECT *
FROM june_intake.students.profiles;-- Creating a database in databricks
CREATE CATALOG IF NOT EXISTS june_intake;

USE CATALOG june_intake;

CREATE SCHEMA IF NOT EXISTS students_profile;

-- To drop is to delete : this code is to delete the schema
DROP SCHEMA students_profile;

-- This code is used to creat a schema within a database
CREATE SCHEMA IF NOT EXISTS students;

-- This code is to create a table in our database and given schema
CREATE OR REPLACE TABLE june_intake.students.profiles (
    student_id INT,
    name STRING,
    surname STRING,
    age INT,
    email STRING,
    registration_DT DATE
);

SELECT *
FROM june_intake.students.profiles;

-- Inserting Values into the table that we have created
INSERT INTO june_intake.students.profiles
 VALUES 
    (101,'Rochester', 'Jones', 28, 'rochester@google.com', '2019-06-05'),
    (102,'Sive', 'Magazi', 33, 'sive@phalaphala.com', '1912-01-01'),
    (103,'Cassper', 'Zuma', 73, 'czuma@kandla.com', '2020-01-12'),
    (104,'Mbali', 'Hlapo', 41, 'mbali@cleaaning.com', '2010-01-12')
;

SELECT *
FROM june_intake.students.profiles;