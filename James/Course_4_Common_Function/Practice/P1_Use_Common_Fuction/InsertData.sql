USE `student_management`;

INSERT INTO `class`
VALUES
(1, "A1", 0, "2008-12-20"),
(2, "A2", 1, "2008-12-22"),
(3, "A3", 0, CURRENT_DATE());

INSERT INTO `subject`
VALUES
(1, "Math", 0, 5),
(2, "English", 1, 6),
(3, "Biology", 0, 8),
(4, "History", 1, 10);

INSERT INTO `student`(`class_id`, `student_name`, `student_status`, `student_address`)
VALUES(1, "Nguyen Phuoc Quy Ngoc", 0, "TP.Hue");

INSERT INTO `student`(`class_id`, `student_name`, `student_address`, `student_phone_number`, `student_status`)
VALUES
(2, "Nguyen Huu Anh Khoa", "TP.Hue", "0999999999", 1),
(3, "Bui Cong Binh Minh", "TP.Hue", "0888888888", 0);

INSERT INTO `mark`(`subject_id`, `student_id`, `mark`, `mark_exam_times`)
VALUES
(1, 1, 8, 1),
(2, 2, 9, 1),
(3, 3, 10, 1);