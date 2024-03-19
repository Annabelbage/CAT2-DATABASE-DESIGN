CREATE TABLE department (
    dept_id INT PRIMARY KEY, -- Assuming department ID is the primary key
    dept_name VARCHAR(50) NOT NULL, -- Department name with maximum length of 50 characters, not nullable
    location VARCHAR(30) DEFAULT NULL -- Department location, allows NULL values
);

INSERT INTO department (dept_id, dept_name, building, budget)
VALUES
  (1, 'Engineering', 'East Wing', 1000000.50),
  (2, 'Marketing', 'West Wing', 750000.00),
  (3, 'Human Resources', 'Main Building', 500000.75),
  (4, 'Sales', 'South Wing', 825436.12),
  (5, 'IT', 'North Wing', 912345.67);
