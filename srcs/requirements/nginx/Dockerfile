FROM debian:bookworm

RUN apt-get update && apt-get install -y nginx

# EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

# COPY ./conf/nginx.conf /etc/nginx/nginx.conf
