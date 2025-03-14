WITH source_data AS (
    SELECT
        Segment,
        Country,
        Product,
        `Discount Band` AS discount_band,
        CAST(`Units Sold` AS NUMERIC) AS units_sold,
        CAST(REPLACE(`Manufacturing Price`, '$ ', '') AS NUMERIC) AS manufacturing_price,
        CAST(REPLACE(`Sale Price`, '$ ', '') AS NUMERIC) AS sale_price,
        CAST(REPLACE(`Gross Sales`, '$ ', '') AS NUMERIC) AS gross_sales,
        CAST(REPLACE(`Discounts`, '$ ', '') AS NUMERIC) AS discounts,
        CAST(REPLACE(`Sales`, '$ ', '') AS NUMERIC) AS sales,
        CAST(REPLACE(`COGS`, '$ ', '') AS NUMERIC) AS cogs,
        CAST(REPLACE(`Profit`, '$ ', '') AS NUMERIC) AS profit,
        CAST(`Month Number` AS INT) AS month_number,
        `Month Name` AS month_name,
        CAST(`Year` AS INT) AS year,
        DATE(PARSE_DATE('%m/%d/%Y', Date)) AS order_date
    FROM {{ source('google_sheets', 'navanita_fivetran_test') }}
),

calculated_metrics AS (
    SELECT
        *,
        ROUND(profit / NULLIF(sales, 0), 2) AS profit_margin,  -- Avoid division by zero
        ROUND(discounts / NULLIF(gross_sales, 0), 2) AS discount_percentage,
        ROUND(sales / NULLIF(units_sold, 0), 2) AS revenue_per_unit
    FROM source_data
)

SELECT
    Segment,
    Country,
    Product,
    discount_band,
    units_sold,
    manufacturing_price,
    sale_price,
    gross_sales,
    discounts,
    discount_percentage,
    sales,
    cogs,
    profit,
    profit_margin,
    revenue_per_unit,
    order_date,
    month_number,
    month_name,
    year
FROM calculated_metrics
WHERE discounts > 0  -- Only keep rows where a discount was applied
ORDER BY order_date;
