-- MYSQL PROJECT:- SECOND HAND CAR SALES PROJECT

CREATE DATABASE cars;
USE cars;

-- Read all the data
SELECT *
FROM cars_table;

-- Count of total Records
SELECT count(*)
FROM cars_table;

-- Cars available in 2023
SELECT count(name)
FROM cars_table
WHERE year = 2023;

-- Cars available in 2020, 2021, 2022
SELECT year, count(name) AS "Total cars"
FROM cars_table
WHERE year IN(2020,2021,2022)
GROUP BY year;

-- Total of all Cars by year
SELECT year,count(name) AS "Total Cars"
FROM cars_table
GROUP BY year;

-- Diesel cars in 2020
SELECT year,count(name) AS "Total Diesel Cars in 2020"
FROM cars_table
WHERE year = 2020 AND fuel="Diesel";

-- Petrol Cars in 2020
SELECT year,count(name) AS "Total Petrol Cars in 2020"
FROM cars_table
WHERE year = 2020 AND fuel="Petrol";

-- All Fuel Cars(Petrol, Diesel and CNG) by year
SELECT year,count(name)
FROM cars_table
WHERE fuel in ("Petrol","Diesel","CNG")
GROUP BY year;
USE cars;

-- Which Year had more than 100 cars
SELECT year,count(name) AS "Total Cars"
FROM cars_table
GROUP BY year
HAVING count(name)>100;

-- Cars count details between 2015 and 2023
SELECT count(name) AS "Total Cars between 2015 and 2023 "
FROM cars_table
WHERE  year BETWEEN 2015 AND 2023;

-- All car details between 2015 and 2023
SELECT *
FROM cars_table
WHERE year BETWEEN 2015 AND 2023;

