DROP SCHEMA IF EXISTS `student_management`;
CREATE SCHEMA `student_management`;
USE `student_management`;

CREATE TABLE `class`
(
    `class_id` INT NOT NULL AUTO_INCREMENT,
    `class_name` VARCHAR(50) NOT NULL,
    `class_status` BIT NOT NULL,
    `class_start_date` DATETIME NOT NULL,

    PRIMARY KEY(`class_id`)
);

CREATE TABLE `student`
(
    `class_id` INT NOT NULL,

    `student_id` INT NOT NULL AUTO_INCREMENT,
    `student_name` VARCHAR(50) NOT NULL,
    `student_status` BIT NOT NULL,
    `student_address` VARCHAR(50) NOT NULL,
    `student_phone_number` CHAR(10) NULL,

    PRIMARY KEY(`student_id`),
    FOREIGN KEY(`class_id`) REFERENCES `class`(`class_id`)
);

CREATE TABLE `subject`
(
    `subject_id` INT NOT NULL AUTO_INCREMENT,
    `subject_name` VARCHAR(50) NOT NULL,
    `subject_status` BIT NOT NULL DEFAULT 1,
    `subject_credit` TINYINT NOT NULL DEFAULT 1 CHECK(`subject_credit` >= 1),

    PRIMARY KEY(`subject_id`)
);

CREATE TABLE `mark`
(
    `student_id` INT NOT NULL,
    `subject_id` INT NOT NULL,

    `mark_id` INT NOT NULL AUTO_INCREMENT,
    `mark` FLOAT NOT NULL DEFAULT 0 CHECK(`mark` BETWEEN 0  AND 100),
    `mark_exam_times` TINYINT NOT NULL DEFAULT 1,

    UNIQUE(`student_id`, `subject_id`),

    PRIMARY KEY(`mark_id`),
    FOREIGN KEY(`student_id`) REFERENCES `student`(`student_id`),
    FOREIGN KEY(`subject_id`) REFERENCES `subject`(`subject_id`)
);