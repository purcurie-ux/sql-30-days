 -- Day 2: functions, CASE, COALESCE (Northwind, PostgreSQL)

-- Northwind task 1: standardize customers
SELECT customer_id,
       TRIM(company_name) AS company_name_clean,
       TRIM(contact_name) AS contact_name_clean,
       UPPER(country) AS country_clean,
       REPLACE(REPLACE(REPLACE(REPLACE(phone, '(', ''), ')', ''), '-', ''), ' ', '') AS phone_clean
FROM customers;

-- Northwind task 2: flag missing regions
SELECT company_name, country,
       CASE
         WHEN region IS NULL THEN 'Missing'
         ELSE 'Present'
       END AS region_status
FROM customers;

-- Northwind task 3: fill missing values
SELECT company_name, country,
       COALESCE(region, 'N/A') AS region_clean,
       COALESCE(fax, 'No fax') AS fax_clean
FROM customers;

-- Northwind task 4: product price tiers
SELECT product_name, unit_price,
       CASE
         WHEN unit_price < 10 THEN 'Cheap'
         WHEN unit_price <= 30 THEN 'Mid'
         ELSE 'Premium'
       END AS tier
FROM products
ORDER BY unit_price;

-- Northwind task 5: stock report
SELECT product_name, units_in_stock, reorder_level,
       CASE
         WHEN units_in_stock = 0 THEN 'Out of stock'
         WHEN units_in_stock < reorder_level THEN 'Reorder now'
         ELSE 'OK'
       END AS action
FROM products;

-- Practice problems 1-20 below (paste your fixed versions with -- P1, -- P2 ... comments)
