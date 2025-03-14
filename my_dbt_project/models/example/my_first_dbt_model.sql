WITH source_data AS (
    SELECT
        Segment,
        Country,
        Product,
        `Discount Band` AS discount_band
    FROM {{ source('google_sheets', 'navanita_fivetran_test') }}
),

calculated_metrics AS (
    SELECT
        *,
        "navanita" as emp_name,
        "das" as emp_surname
    FROM source_data
)

SELECT
    Segment,
    Country,
    Product,
    discount_band,
    emp_name,
    emp_surname
FROM calculated_metrics
WHERE emp_name = "navanita"
ORDER BY order_date;
