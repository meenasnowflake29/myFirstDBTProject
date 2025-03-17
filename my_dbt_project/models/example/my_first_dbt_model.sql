SELECT Country, SUM(Profit) AS Total_Profit
FROM LOGAN_DATA.navanita_dummy_data.dummy_data
GROUP BY Country
ORDER BY Total_Profit DESC
