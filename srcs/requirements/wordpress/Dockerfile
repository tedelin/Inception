FROM debian:bookworm

RUN apt-get update && apt-get install -y wget php8.2-fpm
RUN wget -c http://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN mkdir -p /var/www/html
RUN mv wordpress/*  /var/www/html/

RUN chown -R www-data:www-data /var/www/html/
RUN chmod -R 755 /var/www/html/
RUN rm -f /var/www/html/wp-config-sample.php
COPY conf/wp-config.php /var/www/html/wp-config.php