USE `sale_management`;

INSERT INTO `customer`
VALUES
(1, "Quy Ngoc", 18),
(2, "Tan Luong", 20),
(3, "Huu Tien", 50);

INSERT INTO `order`
VALUES
(1, 1, "2022-06-29 17:10:34", 256.0),
(2, 2, "2022-06-30 12:00:00", 512.0),
(3, 3, "2022-07-01 06:30:00", 1024.0);

INSERT INTO `product`
VALUES
(1, "iPhone", 128.0),
(2, "Samsung", 256.0),
(3, "Xiaomi", 512.0),
(4, "Google Pixel", 1024.0),
(5, "Nokia", 2048.0);

INSERT INTO `order_detail`
VALUES
(1, 1, 2),
(2, 2, 4),
(3, 3, 6);