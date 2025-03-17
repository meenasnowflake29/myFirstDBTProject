SELECT 
    Country, 
    Product, 
    "Units Sold", 
    "Sale Price", 
    "Profit", 
    "Year" + 1 AS next_year
FROM LOGAN_DATA.navanita_dummy_data.dummy_data
