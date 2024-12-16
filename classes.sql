USE mntest1;
SELECT * FROM mntest1.classes;
INSERT INTO Classes (name, language, description) VALUES
('Lập trình Java', 'English', 'Khóa học lập trình Java '),
('Lập trình Python', 'English', 'Khóa học lập trình Python '),
('Ielts', 'English', 'Lớp học ielts'),
('Design', 'English', 'Khóa học thiết kế đồ họa'),
('Lịch sử', 'Vietnamese', 'Lớp học lịch sử');

-- thong ke sluong hoc vien cac lop
SELECT classes_id, COUNT(id) AS student_count FROM Students GROUP BY classes_id;

-- dtb cac khoa hoc
SELECT course_id, AVG(point) AS avg_point FROM Point GROUP BY course_id;

-- khoa hoc dtb cao nhat
SELECT course_id, AVG(point) AS avg_point FROM Point GROUP BY course_id ORDER BY avg_point DESC LIMIT 1;


