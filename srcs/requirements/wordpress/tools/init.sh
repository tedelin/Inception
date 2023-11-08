#!/bin/bash
if [ ! -d "/run/php" ]; then
    mkdir -p /run/php
fi

sleep 5

cd /var/www/html/wordpress

if ! wp core is-installed --allow-root; then
    wp config create --allow-root \
        --dbname=${DB_NAME} \
        --dbuser=${DB_USER} \
        --dbpass=${DB_PASSWORD} \
        --dbhost=${DB_HOST} \
        --path='/var/www/html/wordpress/';
    wp core install --allow-root \
        --url=https://${DOMAIN_NAME} \
        --title=${SITE_TITLE} \
        --admin_user=${ADMIN_USER} \
        --admin_password=${ADMIN_PASSWORD} \
        --admin_email=${ADMIN_EMAIL};
    wp user create --allow-root \
        ${WP_USER_LOGIN} ${WP_USER_EMAIL} \
        --user_pass=${WP_USER_PASSWORD};
    wp cache flush --allow-root
fi
exec /usr/sbin/php-fpm7.4 -F -R