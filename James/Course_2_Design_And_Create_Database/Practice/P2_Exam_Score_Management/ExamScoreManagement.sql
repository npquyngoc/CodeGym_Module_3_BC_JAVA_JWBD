DROP SCHEMA IF EXISTS `exam_score_management`;
CREATE SCHEMA `exam_score_management`;
USE `exam_score_management`;

CREATE TABLE `subject`
(
    `subject_id` INT NOT NULL AUTO_INCREMENT,
    `subject_name` VARCHAR(50) NOT NULL,

    PRIMARY KEY(`subject_id`)
);

CREATE TABLE `teacher`
(
    `teacher_id` INT NOT NULL AUTO_INCREMENT,
    `teachers_name` VARCHAR(50) NOT NULL,
    `teachers_phone_number` CHAR(10) NOT NULL,

    PRIMARY KEY(`teacher_id`)
);

CREATE TABLE `student`
(
    `student_id` INT NOT NULL AUTO_INCREMENT,
    `student_name` VARCHAR(50) NOT NULL,
    `student_class` VARCHAR(20) NOT NULL,
    `student_gender` VARCHAR(20) NOT NULL,
    `student_birth_day` DATE NOT NULL,

    PRIMARY KEY(`student_id`)
);

CREATE TABLE `scoreboard`
(
    `student_id` INT NOT NULL,
    `subject_id` INT NOT NULL,

    `exam_score` FLOAT NOT NULL,
    `exam_date` DATETIME NOT NULL,

    PRIMARY KEY(`student_id`, `subject_id`),
    FOREIGN KEY(`student_id`) REFERENCES `student`(`student_id`),
    FOREIGN KEY(`subject_id`) REFERENCES `subject`(`subject_id`)
);

ALTER TABLE `subject` ADD `teacher_id` INT NOT NULL;
ALTER TABLE `subject` ADD CONSTRAINT `foreign_key_teacher_id` FOREIGN KEY(`teacher_id`) REFERENCES `teacher`(`teacher_id`);