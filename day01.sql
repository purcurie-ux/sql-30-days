-- Day 1: Diagnostic (Northwind, PostgreSQL on Supabase)

-- Row counts
-- customers: 91
-- orders: 830
-- order_details: 2155
-- products: 77
-- employees: 9
-- categories: 8
-- suppliers: 29
-- shippers: 6

-- Q1
SELECT * FROM customers;

-- Q2
SELECT company_name, city FROM customers WHERE country = 'Germany';

-- Q3
SELECT * FROM customers WHERE country IN ('Germany', 'France');

-- Q8
SELECT DISTINCT country FROM customers ORDER BY country;

-- Q11
SELECT * FROM products WHERE discontinued = 0 AND units_in_stock = 0;

-- Northwind: shipping time
SELECT ROUND(AVG(shipped_date - order_date), 1) AS avg_days_to_ship FROM orders;
