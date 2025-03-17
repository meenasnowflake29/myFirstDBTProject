WITH filtered_sales AS (
    SELECT 
        Country,
        Product,
        SUM(Units_Sold) AS total_units_sold,
        AVG(Sale_Price) AS avg_sale_price,
        SUM(Sales) AS total_sales,
        SUM(Profit) AS total_profit,
        CURRENT_TIMESTAMP AS data_loaded_time_tm
    FROM {{ ref('dummy_data') }}  -- Using dbt ref function for table reference
    WHERE Segment = 'Government'  -- Filtering only 'Government' segment
    GROUP BY Country, Product
)

SELECT 
    Country,
    Product,
    total_units_sold,
    avg_sale_price,
    total_sales,
    total_profit,
    ROUND((total_profit / NULLIF(total_sales, 0)) * 100, 2) AS profit_margin -- Calculating profit %
FROM filtered_sales
ORDER BY total_profit DESC;
