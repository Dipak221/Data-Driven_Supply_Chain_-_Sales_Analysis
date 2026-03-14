CREATE DEFINER=`root`@`localhost` FUNCTION `sales_by_market`(m_code VARCHAR(50)) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);

    SELECT SUM(sales_amount)
    INTO total
    FROM sales.transactions
    WHERE market_code = m_code;

    RETURN total;
END