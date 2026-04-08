# Week 2 - Day 3 Tasks (Window Functions)

## Topics Covered

* OVER()
* PARTITION BY
* ROW_NUMBER()
* RANK()
* DENSE_RANK()
* LEAD()
* LAG()
* Running Total

## Task 1: Running Total

Write a SQL query to calculate the running total of salary ordered by month.

Expected:

* Use SUM() window function
* Use ORDER BY inside OVER()


## Task 2: Department Average Difference

Write a query to show:

* employee name
* department
* salary
* department average salary
* difference from department average

Expected:

* Use AVG() OVER (PARTITION BY dept)

---

## Task 3: ROW_NUMBER

Assign row numbers to employees within each department based on salary (highest first).

Expected:

* Use ROW_NUMBER()
* Use PARTITION BY dept
* ORDER BY salary DESC

---

## Task 4: RANK

Rank employees based on salary within each department.

Expected:

* Use RANK()
* Handle duplicate salaries

---

## Task 5: DENSE_RANK

Write a query similar to Task 4 but use DENSE_RANK.

Expected:

* No rank skipping

---

## Task 6: Previous Salary

Display previous employee salary using window function.

Expected:

* Use LAG()

---

## Task 7: Next Salary

Display next employee salary.

Expected:

* Use LEAD()

---

## Task 8: Salary Difference

Find difference between current salary and previous salary.

Expected:

* salary - LAG(salary)

---

## Bonus Task

Find top 2 highest paid employees from each department.

Hint:

* Use ROW_NUMBER()
* Filter WHERE row_number <= 2
