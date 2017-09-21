CREATE TABLE t_order(
  id INT(8) PRIMARY KEY AUTO_INCREMENT,
  order_uuid CHAR(32),
  sender_name CHAR(32),
  sender_address CHAR(50),
  sender_tel CHAR(11),
  receiver_name CHAR(32),
  receiver_address CHAR(50),
  receiver_tel CHAR(11),
  weight int(3),
  service_name CHAR(32),
  price int(6),
  order_date DATE,
  status INT(2)
);