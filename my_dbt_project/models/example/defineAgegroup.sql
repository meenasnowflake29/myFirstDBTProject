SELECT Student_ID, 
       Full_Name, 
       Age,
  CASE 
    WHEN Age < 20 THEN 'Teen'
    WHEN Age BETWEEN 20 AND 25 THEN 'Young Adult'
    WHEN Age BETWEEN 26 AND 30 THEN 'Adult'
    ELSE 'Senior'
  END AS Age_Group
FROM LOGAN_DATA.DESTINATIONMEENASTDDATA.STUDATA
