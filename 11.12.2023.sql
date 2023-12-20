create database employees;
use employees;

create table employee(
ID varchar(5) PRIMARY KEY,
FirstName varchar(20) NOT NULL,
LastName varchar(20) NOT NULL,
Age int NOT NULL,
City varchar(50) NOT NULL,
State varchar(50) NOT NULL
);

-- 1
SELECT AVG(Age)
FROM employee;

-- 2
SELECT MAX(Age) AS OLDEST_PERSON
FROM employee;

-- 3
SELECT MIN(Age) AS OLDEST_PERSON
FROM employee;

-- 4
SELECT COUNT(ID)
FROM employee;

-- 5
SELECT * FROM employee
WHERE STATE LIKE 'A%';

-- 6
SELECT * FROM employee
ORDER BY CITY DESC;

-- 7
SELECT * FROM employee
WHERE LastName LIKE '%s';

-- 8
SELECT * FROM employee
WHERE LastName NOT LIKE 'J%' OR LastName NOT LIKE 'E%';

-- 9
SELECT * FROM employee
WHERE STATE LIKE 'Arizona'
LIMIT 3;

-- 10 
SELECT * FROM employee
ORDER BY LastName ASC, FirstName DESC;