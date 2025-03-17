SELECT 
    Country,
    Product,
    TRY_CAST("Units Sold" AS DECIMAL(18,2)) AS units_sold,
    TRY_CAST(REPLACE("Sale Price", '$', '') AS DECIMAL(18,2)) AS sale_price,
    TRY_CAST("Units Sold" AS DECIMAL(18,2)) * TRY_CAST(REPLACE("Sale Price", '$', '') AS DECIMAL(18,2)) AS total_revenue,
    TO_DATE("Date", 'MM/DD/YYYY') AS sale_date,
    CURRENT_TIMESTAMP AS data_loaded_time_tm
FROM LOGAN_DATA.TALEND.navanita_fivetran_test;
