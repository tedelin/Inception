FROM debian:bullseye

RUN apt-get update && apt-get install -y wget php7.4-fpm php-fpm php-mysql wget && \
    mkdir -p /var/www/html && \
    wget https://fr.wordpress.org/wordpress-6.4-fr_FR.tar.gz -P /var/www/html  && \
    cd /var/www/html && \
    tar -xzvf wordpress-6.4-fr_FR.tar.gz && \
    chown -R www-data:www-data /var/www/html/wordpress && \
    chmod -R 755 /var/www/html/wordpress && \
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    mkdir -p /run/php

COPY tools/init.sh ./init.sh
COPY conf/php-fpm.conf /etc/php/7.4/fpm/php-fpm.conf

RUN chmod +x ./init.sh

ENTRYPOINT [ "bash", "./init.sh" ]