-- 
-- SELECT Country, SUM(Profit) AS Total_Profit
-- FROM LOGAN_DATA.navanita_dummy_data.dummy_data
-- GROUP BY Country
-- ORDER BY Total_Profit DESC

-- SELECT Year, 
--        SUM(Sales) AS Total_Sales, 
--        LAG(SUM(Sales)) OVER (ORDER BY Year) AS Previous_Year_Sales,
--        (SUM(Sales) - LAG(SUM(Sales)) OVER (ORDER BY Year)) / LAG(SUM(Sales)) OVER (ORDER BY Year) * 100 AS YoY_Growth
-- FROM sales_data
-- GROUP BY Year
-- ORDER BY Year

-- WITH YearlySales AS (
--     SELECT Year, Country, SUM(Sales) AS Country_Sales,
--            SUM(SUM(Sales)) OVER (PARTITION BY Year) AS Total_Sales
--     FROM LOGAN_DATA.navanita_dummy_data.dummy_data
--     GROUP BY Year, Country
-- )
-- SELECT Year, Country, Country_Sales, 
--        ROUND((Country_Sales * 100.0) / Total_Sales, 2) AS Sales_Contribution
-- FROM YearlySales
-- ORDER BY Year, Sales_Contribution DESC

SELECT Year, Country, 
       SUM(Sales) AS Country_Sales, 
       ROUND((SUM(Sales) * 100.0) / SUM(SUM(Sales)) OVER (PARTITION BY Year), 2) AS Sales_Contribution
FROM LOGAN_DATA.navanita_dummy_data.dummy_data
GROUP BY Year, Country
ORDER BY Year, Sales_Contribution DESC
