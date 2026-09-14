-- =============================================
-- Pizza Sales Analysis
-- 04 - Data Cleaning & Transformation
-- =============================================

USE PizzaDB;
GO

-- Add native DATE and TIME columns
ALTER TABLE pizza_sales
ADD order_date DATE,
    order_time TIME;
GO

-- Convert raw date and time values
UPDATE pizza_sales
SET
    order_date = TRY_PARSE(order_date_raw AS DATE USING 'en-GB'),
    order_time = TRY_CAST(order_time_raw AS TIME);
GO

-- Remove temporary raw columns
ALTER TABLE pizza_sales
DROP COLUMN order_date_raw,
            order_time_raw;
GO