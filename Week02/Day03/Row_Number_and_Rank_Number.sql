--ROw NUMBER() function it uniquely gives numbers to rows and does not repeats if number 
-- is same and mostly used for sequence numbering

SELECT 
    emp_id,
    name,
    dept,
    salary,
    -- assign unique row number within each department
    ROW_NUMBER() OVER (
        PARTITION BY dept
        ORDER BY salary DESC
    ) AS row_number
FROM sales_data;

-- RANK()
-- RANK() it ranks and give same rank to repeated values and later on skips the next

SELECT 
    emp_id,
    name,
    dept,
    salary,
    -- rank within department
    RANK() OVER (
        PARTITION BY dept
        ORDER BY salary DESC
    ) AS rank_no
FROM sales_data;