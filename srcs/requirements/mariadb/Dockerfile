FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server

COPY conf/start.sh ./start.sh
# COPY conf/mariadb.cnf /etc/mysql/my.cnf

# ENV MYSQL_ROOT_PASSWORD="helloworld"

# EXPOSE 3306

RUN chown -R mysql:mysql /var/lib/mysql

COPY conf/sql.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x ./start.sh

ENTRYPOINT ["bash", "./start.sh" ]
# CMD ["mysqld_safe"]
