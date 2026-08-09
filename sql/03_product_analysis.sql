-- Product Analysis -->

-- Q3: Most bought product category
SELECT DISTINCT TOP 1
Category,
COUNT(*) OVER(PARTITION BY Category) AS most_bought_categories
FROM dbo.samplesuperstore
ORDER BY most_bought_categories DESC