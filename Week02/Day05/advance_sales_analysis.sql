
--Project: Advanced Sales Analysis.

PRAGMA table_info(sales_data);

--What is the month-over-month growth rate in sales? .

WITH monthly_sales AS (
    SELECT 
        substr("Order Date",1,7) AS month,
        SUM("Sales") AS total_sales
    FROM sales_data
    GROUP BY month
)
SELECT 
    month,
    total_sales,
    LAG(total_sales) OVER (ORDER BY month) AS prev_month,   
    ROUND(
        (total_sales - LAG(total_sales) OVER (ORDER BY month))
        *100.0 /
        LAG(total_sales) OVER (ORDER BY month)
    ,2) AS growth_percent
FROM monthly_sales;

--Who are the top 3 customers by sales in each month? 

WITH customer_sales AS (
    SELECT 
        substr("Order Date",1,7) AS month,
        "Customer Name",
        SUM("Sales") AS total_sales
    FROM sales_data
    GROUP BY month, "Customer Name"
),
ranked_customers AS (
    SELECT *,
           DENSE_RANK() OVER(
               PARTITION BY month
               ORDER BY total_sales DESC
           ) AS rnk
    FROM customer_sales
)
SELECT *
FROM ranked_customers
WHERE rnk <= 3;

--What is the average time between a customer's first and second order?

WITH ordered_data AS (
    SELECT 
        "Customer Name",
        "Order Date",
        ROW_NUMBER() OVER(
            PARTITION BY "Customer Name"
            ORDER BY "Order Date"
        ) AS rn
    FROM sales_data
),
first_second AS (
    SELECT 
        a."Customer Name",
        a."Order Date" AS first_order,
        b."Order Date" AS second_order,
        julianday(b."Order Date") - julianday(a."Order Date") AS days_diff
    FROM ordered_data a
    JOIN ordered_data b
      ON a."Customer Name" = b."Customer Name"
     AND a.rn = 1
     AND b.rn = 2
)
SELECT AVG(days_diff) AS avg_days_between_orders
FROM first_second;


