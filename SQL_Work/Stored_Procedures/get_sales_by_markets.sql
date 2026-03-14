CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sales_by_market`(IN m_code VARCHAR(50))
BEGIN
    SELECT 
    market_code,
    SUM(sales_amount) AS total_sales
    FROM sales.transactions
    WHERE market_code = m_code
    GROUP BY market_code;
End
