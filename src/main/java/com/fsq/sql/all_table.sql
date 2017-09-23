
-- CREATE DATABASE logistics_db;

-- 用户表
CREATE TABLE t_user(
  id INT(8) PRIMARY KEY AUTO_INCREMENT ,
  user_uuid CHAR(32),
  user_name CHAR(32) ,
  user_password CHAR(32) NOT NULL ,
  user_email CHAR(32) ,
  user_income INT(8) ,
  user_outcome INT(8)
);

-- 管理员表
CREATE TABLE t_admin(
  id INT(8) PRIMARY KEY auto_increment,
  admin_uuid CHAR(32),
  admin_name CHAR(32),
  admin_password CHAR(32),
  admin_email CHAR(32)
);

-- 服务表
CREATE TABLE t_service(
  id INT(8) PRIMARY KEY auto_increment,
  service_uuid CHAR(32),
  service_name char(32),
  service_price int(6)
);

-- 订单表
CREATE TABLE t_order(
  id INT(8) PRIMARY KEY auto_increment,
  order_uuid CHAR(32),
  user_id INT(8) NOT NULL,
  service_id int(8),
  order_date DATE ,
  order_status int(2),
  FOREIGN KEY (user_id) REFERENCES t_user(id),
  FOREIGN KEY (service_id) REFERENCES t_order(id)
);

-- 物流资讯表
CREATE TABLE t_info(
  id INT(8) PRIMARY KEY AUTO_INCREMENT,
  info_uuid CHAR(32),
  info_title CHAR(50),
  info_content TEXT,
  pubish_date DATE
);

-- 留言表
CREATE TABLE t_message(
  id INT(8) PRIMARY KEY AUTO_INCREMENT,
  msg_uuid CHAR(32),
  user_id INT(8),
  user_name CHAR(32),
  msg_date DATE,
  msg_title CHAR(50),
  msg_content TEXT,
  msg_status INT(2),
  msg_response TEXT,
  FOREIGN KEY (user_id) REFERENCES t_user(id)
);