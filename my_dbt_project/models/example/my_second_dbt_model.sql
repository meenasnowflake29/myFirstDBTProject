
-- Use the `ref` function to select from other models
SELECT 
    *,
    CURRENT_TIMESTAMP AS data_loaded_time
FROM google_sheets.navanita_fivetran_test;
