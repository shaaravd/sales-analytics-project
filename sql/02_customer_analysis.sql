-- Customer Analysis -->

-- Q1: List 10 customers with highest profit
SELECT TOP 10
ROW_NUMBER() OVER(ORDER BY SUM(Profit) DESC) AS Rank_by_highest_profit,
Customer_ID,
SUM(Profit) AS total_profit
FROM dbo.samplesuperstore
GROUP BY Customer_ID

-- Q2: List 10 customers with the most sales
SELECT TOP 10
ROW_NUMBER() OVER(ORDER BY SUM(Sales) DESC) AS Rank_by_total_sales,
Customer_ID,
SUM(Sales) AS total_sales
FROM dbo.samplesuperstore
GROUP BY Customer_ID

-- Q3:
SELECT *
FROM dbo.samplesuperstore