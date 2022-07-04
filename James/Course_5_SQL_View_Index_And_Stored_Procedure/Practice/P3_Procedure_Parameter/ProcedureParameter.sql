# 1. Parameter of type: IN
DELIMITER $$
USE `classicmodels` $$
DROP PROCEDURE IF EXISTS `get_customer_by_id`;
CREATE PROCEDURE `get_customer_by_id`(IN `customer_number` INT(11))

BEGIN
    SELECT *
    FROM `customers`
    WHERE `customerNumber` = `customer_number`;
END $$
DELIMITER ;

# Call stored procedure function.
CALL `get_customer_by_id`(175);


# 2. Parameter of type: OUT
DELIMITER $$
USE `classicmodels` $$
DROP PROCEDURE IF EXISTS `get_customer_count_by_city`;

CREATE PROCEDURE `get_customer_count_by_city`
(
    IN `in_city` VARCHAR(50),
    OUT `total` INT
)

BEGIN
    SELECT COUNT(`customerNumber`)
    INTO `total`
    FROM `customers`
    WHERE `city` = `in_city`;
END $$
DELIMITER ;

# Call stored procedure function.
CALL `get_customer_count_by_city`("Lyon", @total);
SELECT @total;


# 3. Parameter of type: IN-OUT
DELIMITER $$
USE `classicmodels` $$
DROP PROCEDURE IF EXISTS `set_counter`;

CREATE PROCEDURE `set_counter`
(
    INOUT `counter` INT,
    IN `inc` INT
)

BEGIN
    SET `counter` = `counter` + `inc`;
END $$
DELIMITER ;


# Call stored procedure function.
SET @counter = 1;

CALL `set_counter`(@counter, 1);
CALL `set_counter`(@counter, 1);
CALL `set_counter`(@counter, 5);

SELECT @counter;