USE mntest1;
SELECT * FROM mntest1.address;
INSERT INTO Address (address) VALUES
('Hà Nội'),
('Hải Phòng'),
('Đà Nẵng'),
('Hồ Chí Minh'),
('Phú Quốc');

-- thong ke sluong hoc vien cac tinh
SELECT 
    a.address AS province,
    COUNT(s.id) AS student_count
FROM 
    Students s
JOIN 
    Address a ON s.address_id = a.id
GROUP BY 
    s.address_id;

