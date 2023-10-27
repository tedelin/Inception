FROM debian:bookworm

RUN apt-get update && apt-get install -y mariadb-server

COPY conf/init.sql /docker-entrypoint-initdb.d/

RUN chmod +x /docker-entrypoint-initdb.d/init.sql && \
    service mariadb start && \
    mysql -u root -p$MYSQL_ROOT_PASSWORD

# CMD ["mariadb"] 
