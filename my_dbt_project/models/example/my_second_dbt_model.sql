{{ config(materialized='table') }}

SELECT 
    "Major", 
    "Class Level", 
    COUNT(*) AS student_count
FROM LOGAN_DATA.GOSHEET.GOTABLE
GROUP BY "Major", "Class Level"
ORDER BY "Major", "Class Level"
