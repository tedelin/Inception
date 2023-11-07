service mariadb start;

sleep 10

mariadb -e "CREATE DATABASE IF NOT EXISTS \`$DB_NAME\`;"
mariadb -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
mariadb -e "GRANT ALL PRIVILEGES ON \`$DB_NAME\`.* TO '$DB_USER'@'%';"
mariadb -e "ALTER USER 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
mariadb -u root -p$MYSQL_ROOT_PASSWORD -e "FLUSH PRIVILEGES;" $DB_NAME

mysqladmin -u root -p$MYSQL_ROOT_PASSWORD shutdown

mysqld_safe