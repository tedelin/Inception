CREATE USER ${DB_USER} IDENTIFIED BY ${DB_PASSWORD};

GRANT ALL PRIVILEGES ON ${DB_NAME} TO ${DB_USER};

FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS db_data;

USE db_data;