CREATE DEFINER=`root`@`localhost` PROCEDURE `get_transactions_by_customer`()
BEGIN
SELECT 
    product_code,
    customer_code,
    market_code,
    order_date,
    sales_qty,
    sales_amount
    FROM sales.transactions
    WHERE customer_code = cust_code;
END