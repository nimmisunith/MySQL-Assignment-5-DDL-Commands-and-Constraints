CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments(
department_id INT PRIMARY KEY,
department_name Varchar(100)
);
CREATE TABLE Location(
location_id INT,
location_name Varchar(30)
);
CREATE TABLE Employees(
employee_id INT PRIMARY KEY,
employee_name Varchar(50),
gender ENUM('M','F'),
age INT,
hire_date DATE,
designation Varchar(100),
department_id INT,
location_id INT,
salary DECIMAL(10,2)
);
select * from Employees;
ALTER TABLE Employees
ADD email Varchar(100);
select * from Employees;

ALTER TABLE Employees
MODIFY designation Varchar(200);

ALTER TABLE Employees
DROP COLUMN age;
select * from Employees;

ALTER TABLE Employees
RENAME COLUMN hire_date To date_of_joining;

RENAME TABLE departments TO Departments_Info;
RENAME TABLE location TO Locations;

TRUNCATE TABLE Employees;
select * from Employees;

DROP TABLE Employees;
DROP DATABASE employee;

DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;

CREATE TABLE departments(
department_id INT PRIMARY KEY,
department_name Varchar(100) NOT NULL UNIQUE
);

CREATE TABLE location(
location_id INT AUTO_INCREMENT PRIMARY KEY,
location Varchar(30) NOT NULL UNIQUE
);

CREATE TABLE employees(
employee_id INT PRIMARY KEY,
employee_name Varchar(50) NOT NULL,
gender ENUM('M','F'),
age INT CHECK(age>=18),
hire_date DATE DEFAULT(CURRENT_DATE),
designation Varchar(100),
department_id INT,
location_id INT,
salary DECIMAL(10,2),
CONSTRAINT fk_employee_department FOREIGN KEY(department_id)
REFERENCES departments(department_id),
CONSTRAINT fk_employee_location FOREIGN KEY(location_id)
REFERENCES location(location_id)
); 








