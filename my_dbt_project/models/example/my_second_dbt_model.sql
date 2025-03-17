WITH filtered_sales AS (
    SELECT 
        Country,
        Product,
        Units_Sold,
        Sale_Price,
        Sales,
        Profit,
        Year,
        CURRENT_TIMESTAMP AS data_loaded_time_tm
    FROM LOGAN_DATA.navanita_dummy_data.dummy_data
    WHERE Segment = 'Government'  -- Filtering only 'Government' segment
      AND Year = 2014  -- Filtering data for 2014
),

aggregated_sales AS (
    SELECT 
        Country,
        Product,
        SUM(Units_Sold) AS total_units_sold,
        AVG(Sale_Price) AS avg_sale_price,
        SUM(Sales) AS total_sales,
        SUM(Profit) AS total_profit,
        (SUM(Profit) / NULLIF(SUM(Sales), 0)) * 100 AS profit_margin,  -- Profit % Calculation
        MAX(data_loaded_time_tm) AS last_loaded_time
    FROM filtered_sales
    GROUP BY Country, Product
)

SELECT 
    Country,
    Product,
    total_units_sold,
    avg_sale_price,
    total_sales,
    total_profit,
    ROUND(profit_margin, 2) AS profit_margin, -- Rounding profit %
    last_loaded_time
FROM aggregated_sales
ORDER BY total_profit DESC;  -- Sorting by highest profit
