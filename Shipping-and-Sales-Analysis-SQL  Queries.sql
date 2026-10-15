-- Shipping and Sales Analysis
-- PostgreSQL table: shipping_table
-- These are the 10 shipping/sales business questions from the project.
-- Column names with spaces are quoted. Adjust names if yours differ.

-- 1. What is the average shipping time for each shipping mode?
SELECT
    "Ship Mode",
    ROUND(AVG("Total Time")::numeric, 2) AS average_shipping_days
FROM shipping_table
WHERE "Total Time" IS NOT NULL
GROUP BY "Ship Mode"
ORDER BY average_shipping_days;

-- 2. Which orders took more than 5 days to ship?
SELECT
    "Order ID",
    "Order Date",
    "Ship Date",
    "Ship Mode",
    "Total Time"
FROM shipping_table
WHERE "Total Time" > 5
ORDER BY "Total Time" DESC;

-- 3. What percentage of orders took more than 3 days to ship?
SELECT
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE "Total Time" > 3)
        / NULLIF(COUNT(*), 0),
        2
    ) AS percentage_over_3_days
FROM shipping_table
WHERE "Total Time" IS NOT NULL;

-- 4. How do sales change month by month?
SELECT
    DATE_TRUNC('month', "Order Date"::date)::date AS sales_month,
    ROUND(SUM("Sales")::numeric, 2) AS total_sales
FROM shipping_table
WHERE "Order Date" IS NOT NULL
GROUP BY DATE_TRUNC('month', "Order Date"::date)
ORDER BY sales_month;

-- 5. Which are the top 10 states by total sales?
SELECT
    "State",
    ROUND(SUM("Sales")::numeric, 2) AS total_sales
FROM shipping_table
GROUP BY "State"
ORDER BY total_sales DESC
LIMIT 10;

-- 6. Which regions have the highest sales and order volume?
SELECT
    "Region",
    ROUND(SUM("Sales")::numeric, 2) AS total_sales,
    COUNT(DISTINCT "Order ID") AS total_orders
FROM shipping_table
GROUP BY "Region"
ORDER BY total_sales DESC;

-- 7. Which product categories generate the most sales?
SELECT
    "Category",
    ROUND(SUM("Sales")::numeric, 2) AS total_sales
FROM shipping_table
GROUP BY "Category"
ORDER BY total_sales DESC;

-- 8. Which cities have the longest average shipping time?
SELECT
    "City",
    ROUND(AVG("Total Time")::numeric, 2) AS average_shipping_days,
    COUNT(*) AS shipment_records
FROM shipping_table
WHERE "Total Time" IS NOT NULL
GROUP BY "City"
HAVING COUNT(*) >= 2
ORDER BY average_shipping_days DESC
LIMIT 10;

-- 9. Which orders had the longest shipping times?
SELECT
    "Order ID",
    "Order Date",
    "Ship Date",
    "Ship Mode",
    "City",
    "State",
    "Total Time"
FROM shipping_table
WHERE "Total Time" IS NOT NULL
ORDER BY "Total Time" DESC
LIMIT 10;

-- 10. How does shipping time vary by category and sub-category?
SELECT
    "Category",
    "Sub-Category",
    ROUND(AVG("Total Time")::numeric, 2) AS average_shipping_days,
    ROUND(SUM("Sales")::numeric, 2) AS total_sales
FROM shipping_table
WHERE "Total Time" IS NOT NULL
GROUP BY "Category", "Sub-Category"
ORDER BY average_shipping_days DESC;
