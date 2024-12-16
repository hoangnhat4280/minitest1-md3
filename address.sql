USE mntest1;
SELECT * FROM mntest1.address;
INSERT INTO Address (address) VALUES
('Hà Nội'),
('Hải Phòng'),
('Đà Nẵng'),
('Hồ Chí Minh'),
('Phú Quốc');

-- thong ke sluong hoc vien cac tinh
SELECT address_id, COUNT(id) AS student_count FROM Students GROUP BY address_id;
