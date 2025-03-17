SELECT Year, Country, 
       SUM(_Sales) AS Country_Sales, 
       ROUND((SUM(_Sales) * 100.0) / SUM(SUM(_Sales)) OVER (PARTITION BY Year), 2) AS Sales_Contribution
FROM LOGAN_DATA.navanita_dummy_data.dummy_data
GROUP BY Year, Country
ORDER BY Year, Sales_Contribution DESC
