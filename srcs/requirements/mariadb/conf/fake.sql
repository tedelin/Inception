CREATE USER 'tedelin' IDENTIFIED BY 'helloworld';
GRANT ALL PRIVILEGES ON `wp_data`.* TO 'tedelin';
FLUSH PRIVILEGES;
CREATE DATABASE IF NOT EXISTS `wp_data`;
USE `wp_data`;