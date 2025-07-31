
-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);

-- Insert sample data
INSERT INTO employees VALUES
(1, 'Ali', 'IT', 8000, '2021-05-12'),
(2, 'Sara', 'HR', 7000, '2022-02-20'),
(3, 'Ahmed', 'IT', 9000, '2020-11-05'),
(4, 'Mona', 'Finance', 8500, '2023-01-01'),
(5, 'Hind', 'HR', 6800, '2021-07-25');

-- Query: Highest salary per department
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- Query: Average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- Query: Recently hired employees (within last 1 year)
SELECT * FROM employees
WHERE hire_date >= DATE('now', '-1 year');
