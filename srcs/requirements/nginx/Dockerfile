FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx openssl

COPY conf/openssl.cnf openssl.cnf

RUN openssl req -x509 -newkey rsa:4096 -keyout /etc/nginx/tls.key -out /etc/nginx/tls_certificate.crt -sha256 -days 3650 -nodes -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=IT/CN=${DOMAIN_NAME}"

COPY conf/nginx.conf /etc/nginx/sites-available/
RUN mv /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-available/site.conf && \
    ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/

CMD ["nginx", "-g", "daemon off;"]