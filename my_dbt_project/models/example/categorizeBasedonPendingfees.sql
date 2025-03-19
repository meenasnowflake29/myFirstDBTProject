SELECT Student_ID, 
       Full_Name, 
       Pending_Fee,
       CASE 
           WHEN Pending_Fee = 0 THEN 'Fully Paid'
           WHEN Pending_Fee > 0 AND Pending_Fee < 1000 THEN 'Low Pending'
           WHEN Pending_Fee >= 1000 THEN 'High Pending'
       END AS Payment_Status
FROM LOGAN_DATA.DESTINATIONMEENASTDDATA.STUDATA
