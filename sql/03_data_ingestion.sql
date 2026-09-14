-- =============================================
-- Pizza Sales Analysis
-- 03 - Data Ingestion
-- =============================================

USE PizzaDB;
GO

BULK INSERT pizza_sales
FROM '/var/opt/mssql/data/pizza_sales.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);
GO