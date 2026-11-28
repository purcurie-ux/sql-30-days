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

-- Q4
SELECT * FROM products WHERE unit_price BETWEEN 10 AND 20;

-- Q5
SELECT * FROM products WHERE product_name LIKE 'C%';

-- Q6
SELECT * FROM customers WHERE region IS NULL;

-- Q7
SELECT product_name, unit_price FROM products ORDER BY unit_price DESC LIMIT 5;

-- Q9
SELECT * FROM orders WHERE EXTRACT(YEAR FROM order_date) = 1997;

-- Q10
SELECT * FROM orders WHERE freight > 100 ORDER BY freight DESC;

-- Q12
SELECT UPPER(contact_name) AS upper_contact_name,
       LENGTH(company_name) AS length_company_name
FROM customers;

-- Q13
SELECT * FROM customers WHERE city IN ('London', 'Madrid', 'Berlin');

-- Q14
SELECT * FROM products WHERE unit_price > 20 AND category_id != 1;

-- Q15
SELECT * FROM orders WHERE shipped_date IS NULL;

-- Q16
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;

-- Q17
SELECT * FROM customers ORDER BY country ASC, city DESC;

-- Q18
SELECT COUNT(*) FROM products;

-- Q19
SELECT ROUND(AVG(unit_price)::numeric, 2) AS round_avg FROM products;

-- Q20
SELECT MIN(unit_price) AS cheap_pro, MAX(unit_price) AS exp_pro FROM products;
