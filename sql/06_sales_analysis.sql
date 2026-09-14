-- =============================================
-- Pizza Sales Analysis
-- 06 - Sales Trend & Distribution Analysis
-- =============================================

USE PizzaDB;
GO


-- 1. Daily Trend for Total Orders
SELECT
    DATENAME(DW, order_date) AS Order_Day,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY DATENAME(DW, order_date);
GO


-- 2. Hourly Trend for Total Pizzas Sold
SELECT
    DATEPART(HOUR, order_time) AS Order_Hour,
    SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time);
GO


-- 3. Weekly Trend for Total Orders
SELECT
    DATEPART(ISO_WEEK, order_date) AS Week_Number,
    YEAR(order_date) AS Order_Year,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY
    DATEPART(ISO_WEEK, order_date),
    YEAR(order_date)
ORDER BY
    DATEPART(ISO_WEEK, order_date),
    YEAR(order_date);
GO


-- 4. Percentage of Total Sales by Pizza Category
SELECT
    pizza_category,
    CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Revenue,
    CAST(
        SUM(total_price) * 100 /
        (SELECT SUM(total_price) FROM pizza_sales)
        AS DECIMAL(10,2)
    ) AS PCT
FROM pizza_sales
GROUP BY pizza_category;
GO


-- 5. Percentage of Total Sales by Pizza Size
SELECT
    pizza_size,
    CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Revenue,
    CAST(
        SUM(total_price) * 100 /
        (SELECT SUM(total_price) FROM pizza_sales)
        AS DECIMAL(10,2)
    ) AS PCT
FROM pizza_sales
GROUP BY pizza_size
ORDER BY PCT DESC;
GO