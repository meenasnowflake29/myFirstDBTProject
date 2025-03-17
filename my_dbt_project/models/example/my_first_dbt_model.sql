SELECT 
    Country, 
    Product, 
    'Units Sold' AS units_sold, 
    'Sale Price' AS sale_price, 
    'Profit' AS profit, 
    TRY_CAST('Year' AS INT) + 1 AS next_year
FROM LOGAN_DATA.navanita_dummy_data.dummy_data
