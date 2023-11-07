service mariadb start

sleep 1

mariadb -e "CREATE DATABASE IF NOT EXISTS \`wp_data\`;"
mariadb -e "CREATE USER IF NOT EXISTS 'tedelin'@'localhost' IDENTIFIED BY 'helloworld';"
mariadb -e "GRANT ALL PRIVILEGES ON \`wp_data\`.* TO 'tedelin'@'localhost';"
mariadb -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'helloworld';"
mariadb -u root -phelloworld -e "FLUSH PRIVILEGES;"

mysqladmin -u root -phelloworld shutdown

mysqld_safe