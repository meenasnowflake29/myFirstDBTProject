SELECT Student_ID, Full_Name, Enrollment_Status, Pending_Fee
FROM LOGAN_DATA.DESTINATIONMEENASTDDATA.STUDATA
WHERE Enrollment_Status = 'Withdrawn' AND Pending_Fee > 0
