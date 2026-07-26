-- Databricks notebook source
SELECT *
FROM june_intake.student_profiles.student_data;

CREATE OR REPLACE TEMPORARY TABLE elders AS (
SELECT *
FROM june_intake.student_profiles.student_data
WHERE age >40
);

SELECT *
FROM elders;