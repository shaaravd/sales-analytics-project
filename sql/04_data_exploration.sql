-- Data Exploration -->

-- Q1: Preview the data
SELECT TOP 100 *
FROM dbo.samplesuperstore

-- Q2: Total number of rows in the dataset -->
SELECT
COUNT(*) AS total_rows
FROM dbo.samplesuperstore

-- Q3: What is the earliest and latest order date in the dataset?
SELECT
MIN(Order_Date) AS first_order,
MAX(Order_Date) AS last_order
FROM dbo.samplesuperstore

-- Q4: How many unique orders are there?
SELECT DISTINCT
COUNT(Order_ID)
FROM dbo.samplesuperstore

-- Q5: Check for orders shipped before they were placed
SELECT *
FROM dbo.samplesuperstore
WHERE Order_Date > Ship_Date

-- Q6: Check for duplicate rows
SELECT
Row_ID,
COUNT(*) AS duplicate_rows
FROM dbo.samplesuperstore
GROUP BY Row_ID

-- Q7: How many unique customers are there?
SELECT
COUNT(DISTINCT Customer_ID) AS total_customers
FROM dbo.samplesuperstore

-- Q8: What product categories and their subcategories exist
SELECT
Category,
Sub_Category
FROM dbo.samplesuperstore
GROUP BY Category, Sub_Category
ORDER BY Category

-- Q9: Existing regions in the dataset
SELECT DISTINCT
Country_Region,
City
FROM dbo.samplesuperstore
ORDER BY Country_Region

-- Q10: List 10 customers with highest profit
SELECT TOP 10
ROW_NUMBER() OVER(ORDER BY SUM(Profit) DESC) AS Rank_by_highest_profit,
Customer_ID,
SUM(Profit) AS total_profit
FROM dbo.samplesuperstore
GROUP BY Customer_ID

-- Q11: List 10 customers with the most sales
SELECT TOP 10
ROW_NUMBER() OVER(ORDER BY SUM(Sales) DESC) AS Rank_by_total_sales,
Customer_ID,
SUM(Sales) AS total_sales
FROM dbo.samplesuperstore
GROUP BY Customer_ID

-- Q12: 
SELE