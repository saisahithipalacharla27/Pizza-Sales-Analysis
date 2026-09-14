-- =============================================
-- Pizza Sales Analysis
-- 07 - Top & Bottom Product Performance
-- =============================================

USE PizzaDB;
GO


-- =============================================
-- TOP 5 PRODUCTS
-- =============================================

-- 1. Top 5 Pizzas by Revenue
SELECT TOP 5
    pizza_name,
    SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC;
GO


-- 2. Top 5 Pizzas by Quantity
SELECT TOP 5
    pizza_name,
    SUM(quantity) AS Total_Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity DESC;
GO


-- 3. Top 5 Pizzas by Orders
SELECT TOP 5
    pizza_name,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC;
GO


-- =============================================
-- BOTTOM 5 PRODUCTS
-- =============================================

-- 4. Bottom 5 Pizzas by Revenue
SELECT TOP 5
    pizza_name,
    SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC;
GO


-- 5. Bottom 5 Pizzas by Quantity
SELECT TOP 5
    pizza_name,
    SUM(quantity) AS Total_Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity ASC;
GO


-- 6. Bottom 5 Pizzas by Orders
SELECT TOP 5
    pizza_name,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC;
GO