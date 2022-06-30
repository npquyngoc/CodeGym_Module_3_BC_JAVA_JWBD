DROP SCHEMA IF EXISTS `sale_management`;
CREATE SCHEMA `sale_management`;
USE `sale_management`;

CREATE TABLE `customer`
(
    `customer_id` INT NOT NULL AUTO_INCREMENT,
    `customer_name` VARCHAR(50) NOT NULL,
    `customer_age` TINYINT NOT NULL CHECK(`customer_age` BETWEEN 0 AND 100),

    PRIMARY KEY(`customer_id`)
);

CREATE TABLE `order`
(
    `customer_id` INT NOT NULL,

    `order_id` INT NOT NULL AUTO_INCREMENT,
    `order_date` DATETIME NOT NULL,
    `order_total_price` DOUBLE NOT NULL,

    PRIMARY KEY(`order_id`),
    FOREIGN KEY(`customer_id`) REFERENCES `customer`(`customer_id`)
);

CREATE TABLE `product`
(
    `product_id` INT NOT NULL AUTO_INCREMENT,
    `product_name` VARCHAR(50) NOT NULL,
    `product_price` DOUBLE NOT NULL,

    PRIMARY KEY(`product_id`)
);

CREATE TABLE `order_detail`
(
    `order_id` INT NOT NULL,
    `product_id` INT NOT NULL,

    `order_detail_quantity` SMALLINT NOT NULL,

    FOREIGN KEY(`order_id`) REFERENCES `order`(`order_id`),
    FOREIGN KEY(`product_id`) REFERENCES `product`(`product_id`)
);