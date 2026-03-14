SELECT * FROM sales.customers;

# Select customer code, name, and type from customers table
SELECT customer_code, custmer_name, customer_type
FROM sales.customers;

# Show distinct customer types
SELECT DISTINCT customer_type
FROM sales.customers;

# Get customers who belong to a specific customer type
SELECT customer_code, custmer_name, customer_type
FROM sales.customers
WHERE customer_type = 'E-Commerce';

# Count number of customers in each customer type
SELECT customer_type, COUNT(customer_code) AS total_customers
FROM sales.customers
GROUP BY customer_type;

SELECT customer_code, custmer_name, customer_type
FROM sales.customers
LIMIT 10;



