# 1. Create MySQL database.
DROP SCHEMA IF EXISTS `product_management`;
CREATE SCHEMA `product_management`;
USE `product_management`;

# Remove MySQL database.
DROP SCHEMA `product_management`;


# 2. Create MySQL table.
CREATE TABLE `product`
(
    `product_id` INT AUTO_INCREMENT,
    `product_code` INT,
    `product_name` VARCHAR(50),
    `product_price` DOUBLE,
    `product_amount` INT,
    `product_description` TEXT,
    `product_status` BIT,

    PRIMARY KEY(`product_id`)
);

# Insert data to MySQL table.
INSERT INTO `product`
VALUES
(1, 1, "iPhone", 32, 10, "Apple Inc.", 0),
(2, 2, "Samsung", 64, 20, "Samsung Inc.", 1),
(3, 3, "Xiaomi", 128, 30, "Xiaomi Inc.", 0),
(4, 4, "Oppo", 256, 40, "Oppo Inc.", 1),
(5, 5, "Realme", 512, 50, "Realme Inc.", 0),
(6, 6, "Redmi", 1024, 60, "Redmi Inc.", 1),
(7, 7, "Nokia", 2048, 70, "Nokia Inc.", 0),
(8, 8, "Sony", 4096, 80, "Sony Inc.", 1),
(9, 9, "Vivo", 8192, 90, "Vivo Inc.", 0),
(10, 10, "Google Pixel", 16384, 100, "Google Inc.", 1);

# Query data from MySQL table.
SELECT *
FROM `product`;

# Remove MySQL table.
DROP TABLE `product`;


# 3. Create unique index in MySQL table.
ALTER TABLE `product`
ADD UNIQUE INDEX `unique_index_product_management`
(
    `product_code`
);

# Create composite index in MySQL table.
ALTER TABLE `product`
ADD INDEX `index_product_management`
(
    `product_name`,
    `product_price`
);

# Use EXPLAIN to know how MySQL command execute.
SELECT *
FROM `product`;

EXPLAIN SELECT *
FROM `product`;

# Compare query before and after create MySQL index.
SELECT *
FROM `product`
WHERE `product_name` = "iPhone";

EXPLAIN SELECT *
FROM `product`
WHERE `product_name` = "iPhone";

# Remove MySQL index from table.
ALTER TABLE `product`
DROP INDEX `index_product_management`;


# 4. Create MySQL view.
CREATE VIEW `product_view` AS
SELECT
`product_code`,
`product_name`,
`product_price`,
`product_status`
FROM `product`;

# Update MySQL view.
CREATE OR REPLACE VIEW `product_view` AS
SELECT
`product_name`,
`product_price`,
`product_amount`,
`product_description`
FROM `product`
WHERE `product_price` > 1024;

# Query data from MySQL view.
SELECT *
FROM `product_view`;

# Remove MySQL view.
DROP VIEW `product_view`;


# 5. Create MySQL stored procedure.
DELIMITER $$
USE `product_management` $$
DROP PROCEDURE IF EXISTS `product_procedure`;
CREATE PROCEDURE `product_procedure`()

BEGIN
    SELECT *
    FROM `product`;
END $$
DELIMITER ;

# Call MySQL stored procedure function.
CALL `product_procedure`();

# Create MySQL stored procedure and add a new product.
DELIMITER $$
USE `product_management` $$
DROP PROCEDURE IF EXISTS `product_procedure_add`;
CREATE PROCEDURE `product_procedure_add`
(
    `product_id` INT,
    `product_code` INT,
    `product_name` VARCHAR(50),
    `product_price` DOUBLE,
    `product_amount` INT,
    `product_description` TEXT,
    `product_status` BIT
)

BEGIN
    INSERT INTO `product`
    VALUES
    (
        `product_id`,
        `product_code`,
        `product_name`,
        `product_price`,
        `product_amount`,
        `product_description`,
        `product_status`
    );
END $$
DELIMITER ;

# Call MySQL stored procedure function.
CALL `product_procedure_add`(11, 11, "ROG Phone", 32768, 110, "Asus Inc.", 0);

# Create MySQL stored procedure and update product.
DELIMITER $$
USE `product_management` $$
DROP PROCEDURE IF EXISTS `product_procedure_update`;
CREATE PROCEDURE `product_procedure_update`
(
    `product_procedure_id` INT,
    `product_procedure_code` INT,
    `product_procedure_name` VARCHAR(50),
    `product_procedure_price` DOUBLE,
    `product_procedure_amount` INT,
    `product_procedure_description` TEXT,
    `product_procedure_status` BIT
)

BEGIN
    UPDATE `product`
    SET
    `product_procedure_code` = `product_code`,
    `product_procedure_name` = `product_name`,
    `product_procedure_price` = `product_price`,
    `product_procedure_amount` = `product_amount`,
    `product_procedure_description` = `product_description`,
    `product_procedure_status` = `product_status`
    WHERE `product_id` = `product_procedure_id`;
END $$
DELIMITER ;

# Call MySQL stored procedure function.
CALL `product_procedure_update`(11, 12, "Vertu", 9999, 120, "Vertu Inc.", 1);

# Remove MySQL stored procedure.
DELIMITER $$
USE `product_management` $$
DROP PROCEDURE IF EXISTS `product_procedure_remove`;
CREATE PROCEDURE `product_procedure_remove`(`product_procedure_remove_id` INT)

BEGIN
    DELETE FROM `product`
    WHERE `product_id` = `product_procedure_remove_id`;
END $$
DELIMITER ;

# Call MySQL stored procedure function.
CALL `product_procedure_remove`(11);