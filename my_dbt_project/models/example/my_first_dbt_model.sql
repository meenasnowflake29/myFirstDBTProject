WITH source_data AS (
    SELECT
        id,
        name,
        created_at,
        updated_at
    FROM {{ source('google_sheets', 'navanita_fivetran_test') }}
),

transformed_data AS (
    SELECT
        id,
        name,
        created_at,
        updated_at,
        DATE(created_at) AS created_date,
        DATE(updated_at) AS updated_date
    FROM source_data
)

SELECT
    id,
    name,
    created_date,
    updated_date
FROM transformed_data
