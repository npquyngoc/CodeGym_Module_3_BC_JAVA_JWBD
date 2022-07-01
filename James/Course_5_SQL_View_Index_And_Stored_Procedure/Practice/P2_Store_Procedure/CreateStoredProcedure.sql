# 1. Create stored procedure and display all customers table.
DELIMITER $$
USE `classicmodels` $$
DROP PROCEDURE IF EXISTS `find_all_customers`;
CREATE PROCEDURE `find_all_customers`()

BEGIN
    SELECT *
    FROM `customers`;
END $$
DELIMITER ;


# 2. Create stored procedure and display customers table with customerNumber 175
DELIMITER $$
USE `classicmodels` $$
DROP PROCEDURE IF EXISTS `find_all_customers`;
CREATE PROCEDURE `find_all_customers`()

BEGIN
    SELECT *
    FROM `customers`
    WHERE `customerNumber` = 175;
END $$
DELIMITER ;


# 3. Call stored procedure function.
CALL `find_all_customers`();