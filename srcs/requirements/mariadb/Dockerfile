FROM debian:bookworm

RUN apt-get update && apt-get install -y mariadb-server

COPY conf/init.sql /docker-entrypoint-initdb.d/

# CMD ["mariadb"] 