DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES location(location_id)
);
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);
ALTER TABLE employees
MODIFY COLUMN designation VARCHAR(200);
ALTER TABLE employees
DROP COLUMN age;
ALTER TABLE employees
RENAME COLUMN hire_date TO date_of_joining;
RENAME TABLE departments TO Departments_Info;
RENAME TABLE location TO Locations;
TRUNCATE TABLE employees;
DROP TABLE employees;
DROP DATABASE employee;
CREATE DATABASE employee;

USE employee;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES location(location_id)
);
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);
ALTER TABLE employees
MODIFY COLUMN designation VARCHAR(200);
ALTER TABLE employees
DROP COLUMN age;
ALTER TABLE employees
RENAME COLUMN hire_date TO date_of_joining;
RENAME TABLE departments TO Departments_Info;
RENAME TABLE location TO Locations;
SHOW CREATE TABLE Departments_Info;
SHOW CREATE TABLE Locations;
SHOW CREATE TABLE employees;
ALTER TABLE employees
ADD COLUMN age INT CHECK (age >= 18);
ALTER TABLE employees
RENAME COLUMN date_of_joining TO hire_date;
DESCRIBE Departments_Info;
DESCRIBE Locations;
DESCRIBE employees;