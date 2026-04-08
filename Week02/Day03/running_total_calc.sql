-- Calculate the running total of sales month by month.
CREATE TABLE sales_data (
    emp_id INTEGER,
    name TEXT,
    dept TEXT,
    salary INTEGER,
    month INTEGER
);

INSERT INTO sales_data VALUES
(1, 'Aman', 'IT', 50000, 1),
(2, 'Ravi', 'IT', 60000, 2),
(3, 'Neha', 'HR', 45000, 1),
(4, 'Pooja', 'HR', 47000, 2),
(5, 'Karan', 'IT', 55000, 3),
(6, 'Meena', 'HR', 48000, 3);

SELECT 
    month,
    salary,
    -- running total calculation
    SUM(salary) OVER (
        ORDER BY month
    ) AS running_total
FROM sales_data
ORDER BY month;