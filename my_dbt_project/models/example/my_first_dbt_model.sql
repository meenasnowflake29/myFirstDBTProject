-- 
-- SELECT Country, SUM(Profit) AS Total_Profit
-- FROM LOGAN_DATA.navanita_dummy_data.dummy_data
-- GROUP BY Country
-- ORDER BY Total_Profit DESC

SELECT Country,
       SUM(CASE WHEN Product = 'Carretera' THEN Sales ELSE 0 END) AS Carretera_Sales,
       SUM(CASE WHEN Product = 'Montana' THEN Sales ELSE 0 END) AS Montana_Sales
FROM LOGAN_DATA.navanita_dummy_data.dummy_data
GROUP BY Country

-- SELECT Year, 
--        SUM(Sales) AS Total_Sales, 
--        LAG(SUM(Sales)) OVER (ORDER BY Year) AS Previous_Year_Sales,
--        (SUM(Sales) - LAG(SUM(Sales)) OVER (ORDER BY Year)) / LAG(SUM(Sales)) OVER (ORDER BY Year) * 100 AS YoY_Growth
-- FROM sales_data
-- GROUP BY Year
-- ORDER BY Year;
