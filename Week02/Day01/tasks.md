# Week 2 - Day 1 Tasks

## Topics Covered

* SQL Joins Recap
* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* FULL OUTER JOIN
* CROSS JOIN
* UNION vs UNION ALL

## Task 1: Find customers who never placed an order

**Objective:** Identify customers without orders using LEFT JOIN.

```sql
SELECT c.*
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;
```

---

## Task 2: Difference between INNER JOIN and LEFT JOIN

**Objective:** Compare results of INNER JOIN and LEFT JOIN.

```sql
-- INNER JOIN
SELECT c.customer_id, c.name, o.order_id
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- LEFT JOIN
SELECT c.customer_id, c.name, o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;
```

---

## Task 3: Combine results including duplicates

**Objective:** Use UNION ALL to include duplicate values.

```sql
SELECT name FROM customers
UNION ALL
SELECT name FROM customers;

## Outcome

* Practiced SQL joins
* Understood difference between INNER JOIN and LEFT JOIN
* Learned UNION vs UNION ALL
* Executed queries using DBeaver

