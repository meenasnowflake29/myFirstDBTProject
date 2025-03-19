SELECT 
    Student_ID, 
    Full_Name, 
    Total_Fee, 
    Scholarship, 
    (Scholarship / Total_Fee) * 100 AS Scholarship_Percentage
FROM LOGAN_DATA.DESTINATIONMEENASTDDATA.STUDATA
