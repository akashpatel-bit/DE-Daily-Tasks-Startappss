-- using CTE find top three 

WITH dept_avg AS (
    SELECT 
        department, 
        AVG(salary) AS avg_salary
    FROM employee2
    GROUP BY department
)
SELECT 
    e.name,
    e.department,
    e.salary
FROM employee2 e
JOIN dept_avg d
ON e.department = d.department
WHERE e.salary > d.avg_salary;