FROM debian:bookworm

RUN apt-get update && apt-get install -y wget php8.2-fpm mariadb-client php-fpm php-mysql && \
    wget -c http://wordpress.org/latest.tar.gz && \
    tar -xzvf latest.tar.gz && \
    mkdir -p /var/www/html && \
    mv wordpress/*  /var/www/html/ && \
    chown -R www-data:www-data /var/www/html/ && \
    chmod -R 755 /var/www/html/ && \
    rm -f /var/www/html/wp-config-sample.php && \
    rm -f /etc/php/8.2/fpm/php-fpm.conf && \
    rm -f /etc/php/8.2/fpm/pool.d/www.conf

COPY conf/wp-config.php /var/www/html/wp-config.php
COPY conf/php-fpm.conf /etc/php/8.2/fpm/pool.d/www.conf
COPY conf/php-fpm.conf /etc/php/8.2/fpm/php-fpm.conf

CMD ["php-fpm8.2", "-F"]