
-- Objective: Difference between INNER JOIN and LEFT JOIN

-- INNER JOIN: Only matching records
SELECT c.customer_id, c.name, o.order_id
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- LEFT JOIN: All customers + matching orders
SELECT c.customer_id, c.name, o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;