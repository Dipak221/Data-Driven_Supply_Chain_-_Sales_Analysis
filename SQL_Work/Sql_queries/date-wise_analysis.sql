SELECT * FROM sales.date;

# All Transactions From 2020 Using Joins (Join two tables transactions & date)

SELECT sales.transactions.*, sales.date.*FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year = 2020;

# Total Revenue According to year
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year = 2020;

# Total Revenue According to year and Market(City)
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year = 2020 and sales.transactions.market_code = 'Mark001';



