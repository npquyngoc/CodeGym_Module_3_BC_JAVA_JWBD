# 1. Query customerName data from customers table.
SELECT *
FROM `customers`
WHERE `customerName` = "Land of Toys Inc.";


# 2. Explain query customerName data from customers table.
EXPLAIN SELECT *
FROM `customers`
WHERE `customerName` = "Land of Toys Inc.";


# 3. Add index_customerName index for customers table. 
ALTER TABLE `customers`
ADD INDEX `index_customerName`(`customerName`);

EXPLAIN SELECT *
FROM `customers`
WHERE `customerName` = "Land of Toys Inc.";


# 4. Add index_full_name index for customers table.
ALTER TABLE `customers`
ADD INDEX `index_full_name`(`contactFirstName`, `contactLastName`);

EXPLAIN SELECT *
FROM `customers`
WHERE `contactFirstName` = "Jean" 
OR `contactFirstName` = "King";


# 5. Remove index_full_name index from customers table.
ALTER TABLE `customers`
DROP INDEX `index_full_name`;