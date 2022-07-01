USE `student_management`;

SELECT `student_address`, COUNT(`student_id`) AS "student_count"
FROM `student` GROUP BY `student_address`;

SELECT `s`.`student_id`, `s`.`student_name`, AVG(`mark`) AS "student_mark"
FROM `student` `s` JOIN `mark` `m` ON `s`.`student_id` = `m`.`student_id` 
GROUP BY `s`.`student_id`, `s`.`student_name`;

SELECT `s`.`student_id`, `s`.`student_name`, AVG(`mark`) AS "student_mark"
FROM `student` `s` JOIN `mark` `m` ON `s`.`student_id` = `m`.`student_id` 
GROUP BY `s`.`student_id`, `s`.`student_name`
HAVING AVG(`MARK`) > 8;

SELECT `s`.`student_id`, `s`.`student_name`, AVG(`mark`) AS "student_mark"
FROM `student` `s` JOIN `mark` `m` ON `s`.`student_id` = `m`.`student_id` 
GROUP BY `s`.`student_id`, `s`.`student_name`
HAVING AVG(`mark`) >= ALL (SELECT AVG(`mark`) FROM `mark` GROUP BY `mark`.`student_id`);