-- =============================================
-- Pizza Sales Analysis
-- 02 - Table Creation
-- =============================================

USE PizzaDB;
GO

DROP TABLE IF EXISTS pizza_sales;
GO

CREATE TABLE pizza_sales
(
    pizza_id INT,
    order_id INT,
    pizza_name_id VARCHAR(100),
    quantity INT,
    order_date_raw VARCHAR(50),
    order_time_raw VARCHAR(50),
    unit_price DECIMAL(10,2),
    total_price DECIMAL(10,2),
    pizza_size VARCHAR(50),
    pizza_category VARCHAR(50),
    pizza_ingredients VARCHAR(MAX),
    pizza_name VARCHAR(MAX)
);
GO