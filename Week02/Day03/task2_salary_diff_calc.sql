--2. Find the salary difference between an employee and the average salary 
--  of their department.

SELECT 
emp_id, 
name,
dept,
salary,
AVG(salary) OVER (PARTITION BY dept) AS dept_avg,
salary - AVG(salary) OVER (PARTITION BY dept) AS salary_diff
FROM sales_data;