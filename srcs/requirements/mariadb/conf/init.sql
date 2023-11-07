CREATE DATABASE IF NOT EXISTS `wp_data`;
CREATE USER IF NOT EXISTS 'tedelin'@'localhost' IDENTIFIED BY 'helloworld';
GRANT ALL PRIVILEGES ON `wp_data`.* TO 'tedelin';
ALTER USER 'root'@'localhost' IDENTIFIED BY 'helloworld';
FLUSH PRIVILEGES;