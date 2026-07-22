-- Databricks notebook source
-- The function called CURRENT_DATE() gives us today's date
SELECT CURRENT_DATE() AS today_dt;

-- The function called CURRENT_TIMESTAMP gives me the current date and time
SELECT CURRENT_TIMESTAMP() AS dt_time;

-- Converts a STRING(words) into a date (Ensure that a date is read as a date)
SELECT TO_DATE('2026-07-17') AS dt;

-- Converts a date into a string
SELECT TO_CHAR(TO_DATE('2026-07-17'),'yyyyMM') AS  Month_id; 
SELECT TO_CHAR(TO_DATE('2026-07-17'),'yyyy') AS  year_value; 
SELECT TO_CHAR(TO_DATE('2026-07-17'),'dd') AS  day_value; 
SELECT TO_CHAR(TO_DATE('2026-07-17'),'MM') AS  Month_value; 

-- The system recognizes the date format in this way 'yyyy-MM-dd'

-- DATEDIFF(end_date,start_date)
-- end_date - start_date = value 
SELECT DATEDIFF('2026-07-05','2026-07-01') AS dt_difference;

-- DATE_ADD(date, number_of_days)
SELECT DATE_ADD('2026-07-05',5 ) AS add_5_days;

-- DATE_SUB(date, number_of_days)
SELECT DATE_SUB('2026-07-05', 2) AS removing_2_days;

SELECT YEAR('2026-07-05') AS year_dt; -- Extract the year from the date
SELECT DAY('2026-07-05') AS day_dt; -- Extract the day from the date
SELECT MONTH('2026-07-05') AS month_dt; -- Extract the day from the date

SELECT DAYNAME('2026-07-05') AS day_name; -- Tells you the day name
SELECT MONTHNAME('2026-07-05') AS month_name; -- Tells you the month name

SELECT DAYOFWEEK('2026-07-05') AS day_name; -- Tells you the day name

-- ADD_MONTHS(date, number_of_months)
SELECT ADD_MONTHS('2026-07-05', 2) AS adding_2_months; -- add months to the date
