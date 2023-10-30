FROM debian:bookworm

RUN apt-get update && apt-get install -y nginx openssl

EXPOSE 443

ENV DOMAIN_NAME="tedelin.42.fr"

COPY conf/openssl.cnf openssl.cnf

RUN openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/tls_certificate.crt -keyout /etc/nginx/tls.key -config openssl.cnf

COPY conf/nginx.conf /etc/nginx/sites-available/
RUN mv /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-available/$DOMAIN_NAME && \
    ln -s /etc/nginx/sites-available/$DOMAIN_NAME /etc/nginx/sites-enabled/

CMD ["nginx", "-g", "daemon off;"]