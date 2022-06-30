SELECT * FROM `student`;

SELECT * FROM `student`
WHERE `student_name` LIKE "h%";

SELECT * FROM `class`
WHERE `class_start_date` LIKE "%12%";

SELECT * FROM `subject`
WHERE `subject_credit` BETWEEN 3 AND 5;

UPDATE `student` SET `class_id` = 2
WHERE `student_name` = "Nguyen Phuoc Quy Ngoc";
SELECT * FROM `student`;

SELECT `student_name`, `subject_name`, `mark`
FROM `student`, `subject`, `mark`
ORDER BY `mark` DESC, `student_name` ASC;