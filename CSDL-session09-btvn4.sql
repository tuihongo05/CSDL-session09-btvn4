CREATE DATABASE session09_btvn4;
USE session09_btvn4;

CREATE TABLE customers(
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    address VARCHAR(255) NOT NULL
);

DELIMITER $$
CREATE PROCEDURE insert_customer(
	IN in_customer_name VARCHAR(100),
    IN in_email VARCHAR(100),
    IN in_phone VARCHAR(20),
    IN in_address VARCHAR(255)
)
BEGIN
	INSERT INTO customers(customer_name, email, phone, address)
    VALUES (in_customer_name, in_email, in_phone, in_address);
    SELECT 'Thêm mới khách hàng thành công' AS message;
END $$
DELIMITER ;

CALL insert_customer('Nguyen Van A', 'nguyenvana@gmail.com', 0123456789, 'shizuoka'); 