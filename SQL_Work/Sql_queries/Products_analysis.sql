SELECT * FROM sales.products;

DESC sales.products;

# Products Sold  in Chennai 
SELECT distinct product_code FROM sales.transactions where market_code='Mark001';

#Select product code and product type from products table
SELECT product_code, product_type
FROM sales.products;

# Show all unique product types
SELECT DISTINCT product_type
FROM sales.products;

# Sort products by product code
SELECT product_code, product_type
FROM sales.products
ORDER BY product_code ASC;

SELECT * FROM sales WHERE product_code = 'P015';

