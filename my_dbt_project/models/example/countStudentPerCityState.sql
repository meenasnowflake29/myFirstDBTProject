SELECT City, State, COUNT(*) AS Total_Students
FROM LOGAN_DATA.DESTINATIONMEENASTDDATA.STUDATA
GROUP BY City, State
