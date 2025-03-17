{{ config(materialized='table') }}

SELECT 
    ROW_NUMBER() OVER (ORDER BY student_name ASC) AS student_id, 
    student_name, 
    class_level, 
    major
FROM LOGAN_DATA.GOSHEET.GOTABLE
