SELECT 
    Year, 
    SUM(Scholarship) AS Total_Scholarship_Distributed, 
    COUNT(*) AS Number_of_Students
FROM 
    LOGAN_DATA.DESTINATIONMEENASTDDATA.STUDATA
GROUP BY 
    Year
ORDER BY 
    Year
