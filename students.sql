USE mntest1;
SELECT * FROM mntest1.students;

-- INSERT INTO Students (fullname, address_id, age, phone, classes_id) VALUES
-- ('Nguyen Van Nam', 1, 15, '1234567890', 1),
-- ('Tran Thi Anh', 2, 17, '1234567891', 2),
-- ('Le Van Chuyen', 3, 22, '1234567892', 3),
-- ('Pham Thi Dung', 4, 18, '1234567893', 4),
-- ('Nguyen Thi Hien', 5, 24, '1234567894', 5),
-- ('Nguyen Thi Mai', 1, 20, '1234567895', 1),
-- ('Tran Van Anh', 2, 22, '1234567896', 2),
-- ('Le Thi Huyen', 3, 19, '1234567897', 3),
-- ('Phạm Văn Lai', 4, 21, '1234567898', 4),
-- ('Hoàng Thị Lan', 5, 23, '1234567899', 5);

-- SELECT * 
-- FROM students
-- WHERE fullname LIKE 'Nguyen%';
-- SELECT * 
-- FROM Students
-- WHERE fullname LIKE '% Anh';
SELECT * 
FROM Students
WHERE age BETWEEN 15 AND 18;

SELECT * 
FROM Students
WHERE id IN (12, 13);





