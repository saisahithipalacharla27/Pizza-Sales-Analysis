-- =============================================
-- Pizza Sales Analysis
-- 05 - KPI Analysis
-- =============================================

USE PizzaDB;
GO

-- 1. Total Revenue
SELECT
    SUM(total_price) AS Total_Revenue
FROM pizza_sales;
GO


-- 2. Average Order Value
SELECT
        SUM(total_price) / COUNT(DISTINCT order_id) AS Average_Order_Value
FROM pizza_sales;
GO


-- 3. Total Pizzas Sold
SELECT
    SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales;
GO


-- 4. Total Orders
SELECT
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales;
GO


-- 5. Average Pizzas Per Order
SELECT
    CAST(
        CAST(SUM(quantity) AS DECIMAL(10,2))
        / CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2))
        AS DECIMAL(10,2)
    ) AS Average_Pizzas_Per_Order
FROM pizza_sales;
GO