USE `student_management`;

# 1. Display subject detail have highest credit.
SELECT `subject`.*, MAX(`subject_credit`) AS `subject_credit_highest` 
FROM `subject`
GROUP BY `subject_id`

HAVING MAX(`subject_credit`) >= ALL
(
    SELECT MAX(`subject_credit`)
    FROM `subject`
    GROUP BY `subject_credit`
);


# 2. Display subject detail have highest mark.
SELECT `subject`.*, MAX(`mark`) AS `subject_mark_highest`
FROM `subject`
JOIN `mark`
ON `subject`.`subject_id` = `mark`.`subject_id`
GROUP BY `subject_credit`;


# 3. Display student detail and medium mark of student sort with descending.
SELECT `student`.*, AVG(`mark`) AS `student_medium_mark`
FROM `student`
JOIN `mark`
ON `student`.`student_id` = `mark`.`student_id`
GROUP BY `student_id`
ORDER BY AVG(`mark`) DESC;