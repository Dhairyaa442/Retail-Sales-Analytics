-- Total Revenue
SELECT ROUND(SUM(sales)::numeric, 2) AS total_revenue
FROM sales;

-- Total Profit
SELECT ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM sales;

-- Top 10 Customers
SELECT customer_name,
       ROUND(SUM(sales)::numeric, 2) AS revenue
FROM sales
GROUP BY customer_name
ORDER BY revenue DESC
LIMIT 10;

-- Sales by Category
SELECT category,
       ROUND(SUM(sales)::numeric, 2) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;

-- Sales by Region
SELECT region,
       ROUND(SUM(sales)::numeric, 2) AS revenue
FROM sales
GROUP BY region
ORDER BY revenue DESC;

-- Average Order Value
SELECT ROUND(
    SUM(sales) /
    COUNT(DISTINCT order_id),
    2
) AS average_order_value
FROM sales;