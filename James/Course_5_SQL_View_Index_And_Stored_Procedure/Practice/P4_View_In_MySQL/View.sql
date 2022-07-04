# 1. Create MySQL view.
USE `classicmodels`;
DROP VIEW IF EXISTS `customer_views`;
CREATE VIEW `customer_views` AS

SELECT `customerNumber`, `customerName`, `phone`
FROM `customers`;

# Query data from MySQL view.
SELECT *
FROM `customer_views`;


# 2. Update MySQL view.
CREATE OR REPLACE VIEW `customer_views` AS

SELECT 
`customerNumber`,
`customerName`,
`contactFirstName`,
`contactLastName`,
`city`,
`phone`

FROM `customers`
WHERE `city` = "Nantes";

# Query data from MySQL view.
SELECT *
FROM `customer_views`;


# 3. Remove MySQL view.
DROP VIEW `customer_views`;