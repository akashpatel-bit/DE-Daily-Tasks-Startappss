
-- Question 3
-- Objective: Combine results including duplicates
-- Using UNION ALL

SELECT name 
FROM customers
UNION ALL
SELECT name 
FROM customers;