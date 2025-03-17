SELECT Year, Country, 
       SUM(Sales) AS Country_Sales, 
       ROUND((SUM(Sales) * 100.0) / SUM(SUM(Sales)) OVER (PARTITION BY Year), 2) AS Sales_Contribution
FROM LOGAN_DATA.navanita_dummy_data.dummy_data
GROUP BY Year, Country
ORDER BY Year, Sales_Contribution DESC
