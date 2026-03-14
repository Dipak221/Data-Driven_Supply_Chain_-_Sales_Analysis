SELECT * FROM sales.transactions;
SELECT * FROM sales.transactions;

# First 5 Sales Transactions 
SELECT * FROM sales.transactions limit 5;

# All Transactions From Chennai Only
SELECT * FROM sales.transactions Where market_code = 'Mark001';

# Total Count of All Transactions From Chennai Only
SELECT count(*) FROM sales.transactions Where market_code = 'Mark001';

# Transactions Done in Currency
SELECT * FROM sales.transactions Where currency = 'USD';

SELECT * FROM sales.transactions Where sales_amount = -1 ;
SELECT * FROM sales.transactions Where sales_amount <= 0;
