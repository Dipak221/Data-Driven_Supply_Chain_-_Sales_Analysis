CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `sales`.`customer_view` AS
    SELECT 
        `sales`.`customers`.`customer_code` AS `customer_code`,
        `sales`.`customers`.`custmer_name` AS `custmer_name`,
        `sales`.`customers`.`customer_type` AS `customer_type`
    FROM
        `sales`.`customers`