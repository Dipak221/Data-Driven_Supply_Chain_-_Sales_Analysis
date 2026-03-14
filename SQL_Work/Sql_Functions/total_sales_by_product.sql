CREATE DEFINER=`root`@`localhost` FUNCTION `total_sales_by_product`(p_code VARCHAR(50)) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);

    SELECT SUM(sales_amount)
    INTO total
    FROM sales.transactions
    WHERE product_code = p_code;

    RETURN total;
END