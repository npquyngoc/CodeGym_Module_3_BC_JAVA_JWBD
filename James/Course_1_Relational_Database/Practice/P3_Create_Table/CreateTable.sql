DROP SCHEMA IF EXISTS `student_management`;
CREATE SCHEMA `student_management`;
USE `student_management`;

CREATE TABLE `student`
(
    `student_id` INT NOT NULL AUTO_INCREMENT,
    `student_name` VARCHAR(50) NOT NULL,
    `student_age` TINYINT NOT NULL,
    `student_country` VARCHAR(50) NOT NULL,

    PRIMARY KEY(`student_id`)
);