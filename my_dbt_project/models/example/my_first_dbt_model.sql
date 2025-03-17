SELECT Country, SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Country
ORDER BY Total_Profit DESC;
