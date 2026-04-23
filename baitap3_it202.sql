use baitap3;

-- 1. Cấu trúc bảng ban đầu
CREATE TABLE CUSTOMERS (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100),
    LastPurchaseDate DATE,
    Status VARCHAR(20), -- Trạng thái tài khoản (Active, Locked...)
    Address VARCHAR(255)
) ENGINE=INNODB CHARSET=utf8mb4;

-- 2. Thêm dữ liệu mẫu (Lưu ý: có một số tài khoản bị khóa hoặc thiếu email)
INSERT INTO CUSTOMERS (Name, Email, Address, LastPurchaseDate, Status) VALUES
('Nguyen Van A', 'anv@gmail.com', 'Hà Nội', '2025-05-20', 'Active'),
('Tran Thi B', NULL, 'Hà Nội', '2025-03-01', 'Active'),
('Pham Minh C', 'pmc@gmail.com', 'Hà Nội', '2025-02-01', 'Locked'),
('Hoang An E', 'ehoangan1@gmail.com', 'Hà Nội', '2025-03-01', 'Active');


SELECT Name , Email FROM CUSTOMERS
WHERE Email IS NOT NULL 
AND Status = 'Active'
AND Address = 'Hà Nội'
AND LastPurchaseDate < '2026-04-01';