SELECT Student_ID, 
       Full_Name, 
       GPA,
       Scholarship,
       CASE 
           WHEN GPA >= 3.5 THEN 'Eligible'
           WHEN Scholarship IS NOT NULL AND Scholarship > 0 THEN 'Eligible'
           ELSE 'Not Eligible'
       END AS Scholarship_Status
FROM LOGAN_DATA.DESTINATIONMEENASTDDATA.STUDATA
