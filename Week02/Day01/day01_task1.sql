-- Find customers who never placed an order
-- Logic : LEFT JOIN + NULL check

CREATE TABLE customers (
customer_id INT,
name VARCHAR(50)
);

CREATE TABLE orders (
order_id INT,
customer_id INT
);

INSERT INTO customers VALUES
(1,'Rahul'),
(2,'Aman'),
(3,'Neha');

INSERT INTO orders VALUES
(101,1),
(102,1),
(103,2);

SELECT c.*
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

