SELECT Student_ID, 
       Full_Name, 
       GPA,
       CASE 
           WHEN GPA >= 3.5 THEN 'Excellent'
           WHEN GPA BETWEEN 3.0 AND 3.49 THEN 'Good'
           WHEN GPA BETWEEN 2.0 AND 2.99 THEN 'Average'
           ELSE 'Low'
       END AS Performance_Category
FROM LOGAN_DATA.DESTINATIONMEENASTDDATA.STUDATA
