SELECT 
    *,
    CURRENT_TIMESTAMP AS data_loaded_time  -- Adds a new column
FROM LOGAN_DATA.GSHEET.GTABLE;
