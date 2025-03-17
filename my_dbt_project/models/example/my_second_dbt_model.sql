{{ config(materialized='table') }}

SELECT 
    ROW_NUMBER() OVER (ORDER BY "Major" ASC) AS student_id, 
    "Student Name" AS student_name, 
    "Class Level" AS class_level, 
    "Major" AS major
FROM LOGAN_DATA.GOSHEET.GOTABLE
ORDER BY "Major" ASC
