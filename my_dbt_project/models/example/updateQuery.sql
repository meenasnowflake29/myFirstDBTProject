{{ config(
    materialized='incremental',
    unique_key='ROW_ID'
) }}

SELECT 
    _ROW, 
    CUSTOMER_ID, 
    ORDER_ID, 
    SHIP_DATE, 
    SHIP_MODE, 
    COUNTRY, 
    ORDER_DATE, 
    CUSTOMER_NAME, 
    SEGMENT
FROM {{ source('logandata', 'google_sheets_meena_trans') }}

{% if is_incremental() %}
-- Only insert new or updated records
WHERE _FIVETRAN_SYNCED > (SELECT MAX(_FIVETRAN_SYNCED) FROM {{ this }})
{% endif %}

