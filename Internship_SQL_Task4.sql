-- Step 1: Create Database
CREATE DATABASE IF NOT EXISTS CompanyDB;
USE CompanyDB;

-- Step 2: Create Tables
CREATE TABLE Departments (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100)
);

CREATE TABLE Employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    dept_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- Step 3: Insert Sample Data
-- Departments
INSERT INTO Departments (dept_name) VALUES
('HR'), ('Finance'), ('IT'), ('Marketing');

-- Employees
INSERT INTO Employees (name, dept_id, salary) VALUES
('Ravi', 1, 25000),
('Priya', 1, 27000),
('Amit', 2, 50000),
('Sonia', 2, 52000),
('Rahul', 3, 60000),
('Neha', 3, 65000),
('Deepak', 4, 40000);

-- Step 4: Aggregate Function Queries

-- 1. SUM (Total salary per department)
SELECT dept_id, SUM(salary) AS total_salary
FROM Employees
GROUP BY dept_id;

-- 2. COUNT (Number of employees per department)
SELECT dept_id, COUNT(*) AS num_employees
FROM Employees
GROUP BY dept_id;

-- 3. AVG (Average salary per department)
SELECT dept_id, AVG(salary) AS avg_salary
FROM Employees
GROUP BY dept_id;

-- 4. HAVING (Departments with average salary > 50000)
SELECT dept_id, AVG(salary) AS avg_salary
FROM Employees
GROUP BY dept_id
HAVING AVG(salary) > 50000;

-- 5. COUNT DISTINCT (Distinct salaries)
SELECT COUNT(DISTINCT salary) AS distinct_salaries
FROM Employees;
