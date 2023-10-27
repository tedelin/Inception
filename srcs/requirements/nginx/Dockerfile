FROM debian:bookworm

RUN apt-get update && apt-get install -y nginx openssl

EXPOSE 80

RUN openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out tls_certificate.crt -keyout tls.key -config openssl.cnf

# COPY ./conf/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]

