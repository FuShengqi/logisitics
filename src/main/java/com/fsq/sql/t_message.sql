CREATE TABLE t_message(
  id INT(8) PRIMARY KEY AUTO_INCREMENT,
  msg_uuid CHAR(32),
  user_name CHAR(32),
  user_contact CHAR(32),
  msg_date DATE,
  msg_title CHAR(50),
  msg_content TEXT,
  msg_status INT(2),
  msg_response TEXT
);