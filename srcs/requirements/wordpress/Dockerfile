FROM debian:bullseye

RUN apt-get update && apt-get install -y wget php7.4-fpm php-fpm php-mysql wget && \
    mkdir -p /var/www/html && \
    wget https://fr.wordpress.org/wordpress-6.2.2-fr_FR.tar.gz -P /var/www/html  && \
    cd /var/www/html && \
    tar -xzvf wordpress-6.2.2-fr_FR.tar.gz && \
    chown -R www-data:www-data /var/www/html/ && \
    chmod -R 755 /var/www/html/ 
    
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

COPY conf/checkdb.php /var/www/html/wordpress/checkdb.php

COPY conf/wp-config.php /var/www/html/wordpress/wp-config.php
COPY conf/script.sh ./script.sh
RUN chmod +x ./script.sh

COPY conf/php-fpm.conf /etc/php/7.4/fpm/php-fpm.conf

# CMD ["php-fpm7.4", "-F", "-R"]
ENTRYPOINT [ "bash", "./script.sh" ]