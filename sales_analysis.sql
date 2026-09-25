-- Sales Performance Analysis

-- 1. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM sales_data;

-- 2. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM sales_data;

-- 3. Total Orders
SELECT COUNT(DISTINCT Order_ID) AS Total_Orders
FROM sales_data;

-- 4. Total Quantity Sold
SELECT SUM(Quantity) AS Total_Quantity
FROM sales_data;

-- 5. Sales and Profit by Category
SELECT Category,
       SUM(Sales) AS Total_Sales,
       SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 6. Sales and Profit by Region
SELECT Region,
       SUM(Sales) AS Total_Sales,
       SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 7. Top 10 Products
SELECT Product,
       SUM(Sales) AS Total_Sales,
       SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 10;

-- 8. Monthly Sales Trend
SELECT MONTH(Order_Date) AS Month,
       SUM(Sales) AS Total_Sales,
       SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY MONTH(Order_Date)
ORDER BY Month;

-- 9. Profit Margin
SELECT
    SUM(Profit) / SUM(Sales) * 100 AS Profit_Margin_Percentage
FROM sales_data;

-- 10. Top 10 Customers
SELECT Customer,
       SUM(Sales) AS Total_Sales,
       SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Customer
ORDER BY Total_Sales DESC
LIMIT 10;
