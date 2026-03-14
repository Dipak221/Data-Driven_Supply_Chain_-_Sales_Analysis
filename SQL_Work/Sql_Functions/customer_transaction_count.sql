CREATE DEFINER=`root`@`localhost` FUNCTION `customer_transaction_count`(c_code VARCHAR(50)) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM sales.transactions
    WHERE customer_code = c_code;

    RETURN total;
END