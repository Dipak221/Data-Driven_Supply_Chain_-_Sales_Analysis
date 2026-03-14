CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `sales`.`transaction_view` AS
    SELECT 
        `sales`.`transactions`.`product_code` AS `product_code`,
        `sales`.`transactions`.`customer_code` AS `customer_code`,
        `sales`.`transactions`.`market_code` AS `market_code`,
        `sales`.`transactions`.`order_date` AS `order_date`,
        `sales`.`transactions`.`sales_qty` AS `sales_qty`,
        `sales`.`transactions`.`sales_amount` AS `sales_amount`,
        `sales`.`transactions`.`currency` AS `currency`
    FROM
        `sales`.`transactions`