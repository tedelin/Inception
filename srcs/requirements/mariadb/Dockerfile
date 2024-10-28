FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y mariadb-server && \
	rm -rf /var/lib/apt/lists/*

COPY tools/init.sh ./init.sh
RUN chmod +x init.sh

RUN chown -R mysql:mysql /var/lib/mysql

COPY conf/mariadb.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

ENTRYPOINT ["bash", "./init.sh" ]