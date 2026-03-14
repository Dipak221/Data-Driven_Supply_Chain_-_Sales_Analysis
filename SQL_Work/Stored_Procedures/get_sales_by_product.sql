CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sales_by_product`()
BEGIN
    SELECT 
    product_code,
    SUM(sales_amount) AS total_sales
    FROM sales.transactions
    GROUP BY product_code
    ORDER BY total_sales DESC;
END