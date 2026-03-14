CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `sales`.`markets_view` AS
    SELECT 
        `sales`.`markets`.`markets_code` AS `markets_code`,
        `sales`.`markets`.`markets_name` AS `markets_name`,
        `sales`.`markets`.`zone` AS `zone`
    FROM
        `sales`.`markets`