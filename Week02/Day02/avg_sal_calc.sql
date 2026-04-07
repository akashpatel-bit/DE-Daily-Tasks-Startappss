


-- create new table employee2
CREATE TABLE employee2 (
    id INTEGER PRIMARY KEY,
    name TEXT,
    department TEXT,
    salary INTEGER
);

-- insert sample data
INSERT INTO employee2 (id, name, department, salary) VALUES
(1, 'Amit', 'HR', 40000),
(2, 'Riya', 'HR', 45000),
(3, 'Rahul', 'IT', 60000),
(4, 'Neha', 'IT', 65000),
(5, 'Karan', 'Sales', 30000),
(6, 'Priya', 'Sales', 35000),
(7, 'Arjun', 'IT', 70000),
(8, 'Sneha', 'HR', 48000);

SELECT * FROM employee2

-- departments where avg salary > company avg
SELECT 
    department,
    AVG(salary) AS dept_avg_salary
FROM employee2
GROUP BY department
HAVING AVG(salary) > (
    SELECT AVG(salary)
    FROM employee2
);