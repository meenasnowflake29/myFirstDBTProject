SELECT Student_ID,
       Full_Name,
       SPLIT_PART(Address, ',', 1) AS Street,
       SPLIT_PART(Address, ',', 2) AS City,
       SPLIT_PART(Address, ',', 3) AS State
FROM LOGAN_DATA.DESTINATIONMEENASTDDATA.STUDATA
