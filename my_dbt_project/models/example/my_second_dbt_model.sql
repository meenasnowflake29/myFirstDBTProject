{{ config(materialized='table') }}

SELECT 
    ROW_NUMBER() OVER (ORDER BY "Student Name") AS student_id, 
    "Student Name", 
    "Class Level", 
    "Major"
FROM LOGAN_DATA.GOSHEET.GOTABLE
