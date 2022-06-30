DROP SCHEMA IF EXISTS `student_management`;
CREATE SCHEMA `student_management`;
USE `student_management`;

CREATE TABLE `class`
(
    `class_id` INT NOT NULL AUTO_INCREMENT,
    `class_name` VARCHAR(50) NOT NULL,

    PRIMARY KEY(`class_id`)
);

CREATE TABLE `teacher`
(
    `teacher_id` INT NOT NULL AUTO_INCREMENT,
    `teacher_name` VARCHAR(50) NOT NULL,
    `teacher_age` TINYINT NOT NULL,
    `teacher_country` VARCHAR(50) NOT NULL,

    PRIMARY KEY(`teacher_id`)
);

CREATE TABLE `student`
(
    `student_id` INT NOT NULL AUTO_INCREMENT,
    `student_name` VARCHAR(50) NOT NULL,
    `student_age` TINYINT NOT NULL,
    `student_country` VARCHAR(50) NOT NULL,

    PRIMARY KEY(`student_id`)
);