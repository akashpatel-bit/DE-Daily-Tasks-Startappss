-- A customer wants to make a change in city then make a type 2 SCD

--Que 
CREATE TABLE customers2 (
    customer_id INT,
    name TEXT,
    address TEXT,
    start_date DATE,
    end_date DATE,
    is_current INT
);

INSERT INTO customers2
VALUES (1,'Akash','Delhi','2024-01-01',NULL,1);

UPDATE customers2
SET end_date = DATE('now'),
    is_current = 0
WHERE customer_id = 1
AND is_current = 1;
INSERT INTO customers2
VALUES (1,'Akash','Mumbai',DATE('now'),NULL,1);

SELECT * from customers2