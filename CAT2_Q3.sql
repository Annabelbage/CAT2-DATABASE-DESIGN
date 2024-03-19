-- Create the database (if it doesn't exist)
CREATE DATABASE IF NOT EXISTS KCA;

-- Use the KCA database
USE KCA;

-- Create the employees table
CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  department VARCHAR(20) NOT NULL,
  salary DECIMAL(10,2) NOT NULL
);

-- Insert sample data into the employees table
INSERT INTO employees (id, name, department, salary)
VALUES
  (1, 'John Smith', 'HR', 5000.00),
  (2, 'John Doe', 'IT', 6000.00),
  (3, 'Mark Brown', 'Sales', 4500.00),
  (4, 'Lisa Green', 'HR', 5500.00),
  (5, 'Alex Young', 'IT', 7000.00);

-- Retrieve all columns from the employees table
SELECT *
FROM employees;

-- list of unique departments
SELECT DISTINCT department
FROM employees;

-- Retrieve employees names and salaries in ascending order of their salaries
SELECT name, salary
FROM employees
ORDER BY salary ASC;

-- calculate the total salary for each department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT *
FROM employees
WHERE salary > 5000;

-- add the new column age
ALTER TABLE employees
ADD age INT;


-- Retrieve  set values for age column
UPDATE employees
SET age = (35, 28, 20, 30, 13);
