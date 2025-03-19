SELECT Student_ID, 
       (Pending_Fee / Total_Fee) * 100 AS Pending_Fee_Percentage
FROM LOGAN_DATA.DESTINATIONMEENASTDDATA.STUDATA
