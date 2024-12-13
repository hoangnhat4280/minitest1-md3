USE mntest1;
SELECT * FROM mntest1.classes;
INSERT INTO Classes (name, language, description) VALUES
('Lập trình Java', 'English', 'Khóa học lập trình Java '),
('Lập trình Python', 'English', 'Khóa học lập trình Python '),
('Ielts', 'English', 'Lớp học ielts'),
('Design', 'English', 'Khóa học thiết kế đồ họa'),
('Lịch sử', 'Vietnamese', 'Lớp học lịch sử');

-- thong ke sluong hoc sinh của cac lop
SELECT 
    c.name AS class_name,
    COUNT(s.id) AS student_count
FROM 
    Students s
JOIN 
    Classes c ON s.classes_id = c.id
GROUP BY 
    s.classes_id;
    
-- dtb cua cac khoa hoc
    SELECT 
    c.name AS course_name,
    AVG(p.point) AS average_point
FROM 
    Point p
JOIN 
    Course c ON p.course_id = c.id
GROUP BY 
    p.course_id;


