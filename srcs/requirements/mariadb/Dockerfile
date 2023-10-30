FROM debian:bookworm

RUN apt-get update && apt-get install -y mariadb-server

COPY conf/init.sql /docker-entrypoint-initdb.d/init.sql
COPY conf/mariadb.cnf /etc/mysql/my.cnf

# ENV MYSQL_ROOT_PASSWORD="helloworld"

RUN chown -R mysql:mysql /var/lib/mysql

RUN chmod +x /docker-entrypoint-initdb.d/init.sql && \
    service mariadb start && \
    mysql -u root -p$MYSQL_ROOT_PASSWORD -e "source /docker-entrypoint-initdb.d/init.sql"
    # mysql -u root -p
    # mysql -u root -p$MYSQL_ROOT_PASSWORD -e "source init.sql"
    # mysql -u root -p$MYSQL_ROOT_PASSWORD

CMD ["mysqld", "--user=root"]
