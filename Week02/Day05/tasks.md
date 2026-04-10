# Day 5 - Weekly Project 2 (Advanced Sales Analysis)

## 🎯 Objective

Build a sales analytics project using Python, SQLite, and advanced SQL window functions.


## 🧰 Tools Used

* Python
* Pandas
* SQLite
* DBeaver
* SQL Window Functions

---

## 📌 Tasks Completed

### Task 1: Load Data Using Python

* Fetch dataset from web
* Convert to pandas DataFrame
* Clean and format columns
* Create SQLite database
* Load data into `sales_data` table

---

### Task 2: Month-over-Month Growth

* Group sales by month
* Use `LAG()` window function
* Calculate growth percentage

**Concepts Used**

* CTE
* LAG()
* Aggregate Functions

---

### Task 3: Top 3 Customers Per Month

* Calculate total sales per customer per month
* Rank customers using `DENSE_RANK()`
* Filter top 3 customers

**Concepts Used**

* PARTITION BY
* DENSE_RANK()
* Window Functions

---

### Task 4: Average Time Between First and Second Order

* Assign order sequence using `ROW_NUMBER()`
* Extract first and second order
* Calculate days difference
* Compute average

**Concepts Used**

* ROW_NUMBER()
* Self Join
* Date Difference
* AVG()

---

## 📊 Results

* Month-over-Month growth calculated
* Top customers identified per month
* Average repeat purchase time computed (~304 days)

---

## 🧠 Key Learnings

* Data loading using Python
* SQLite database handling
* SQL window functions
* Analytical queries
* Real-world sales insights


