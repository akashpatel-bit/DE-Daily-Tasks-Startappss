# Day 4 - Performance & Optimization

## Theory Topics

* Indexes (B-Tree, Clustered vs Non-Clustered)
* Understanding EXPLAIN QUERY PLAN
* Transactions (ACID properties)

---

## Practical Questions

### 1. What is a database index and how does it improve query performance?

**Answer:**
A database index is a data structure that improves query performance by allowing the database engine to find rows faster. Instead of scanning the entire table, the index helps locate the required data directly. Indexes are typically created on columns that are frequently used in WHERE, JOIN, or ORDER BY clauses, which reduces query execution time and improves overall database performance.

---

### 2. You have a query that is running slow. What is the first tool/command you would use to investigate it?

**Answer:**
The first command to investigate a slow-running query is EXPLAIN QUERY PLAN. It helps understand how the database executes the query by showing whether it performs a full table scan or uses an index. This information helps identify performance issues and optimize the query.

---

### 3. Explain the 'C' in ACID (Consistency).

**Answer:**
The 'C' in ACID stands for Consistency. It ensures that a transaction brings the database from one valid state to another valid state. After the transaction is completed, all rules, constraints, and relationships in the database must remain valid. If any error occurs, the database rolls back the transaction to maintain consistency.

---

## Practice SQL

### Create Table

```sql
CREATE TABLE employees (
    emp_id INT,
    name TEXT,
    department TEXT,
    salary INT
);
```

### Insert Sample Data

```sql
INSERT INTO employees VALUES (1,'Rahul','IT',60000);
INSERT INTO employees VALUES (2,'Amit','HR',45000);
INSERT INTO employees VALUES (3,'Neha','IT',70000);
INSERT INTO employees VALUES (4,'Priya','Finance',50000);
```

### Check Query Without Index

```sql
EXPLAIN QUERY PLAN
SELECT * FROM employees
WHERE salary > 50000;
```

### Create Index

```sql
CREATE INDEX idx_salary
ON employees(salary);
```

### Check Query With Index

```sql
EXPLAIN QUERY PLAN
SELECT * FROM employees
WHERE salary > 50000;
```

---

## Goal

* Understand indexing
* Use EXPLAIN QUERY PLAN
* Learn ACID consistency concept
* Compare query performance

