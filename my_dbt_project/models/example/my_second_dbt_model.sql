{{ config(materialized='table') }}

SELECT 
    ROW_NUMBER() OVER () AS student_id, 
    "Student Name", 
    "Class Level", 
    "Major"   -- Adds a new column
FROM LOGAN_DATA.GOSHEET.GOTABLE
