FROM mawalu/docker-php:latest

MAINTAINER Martin Wagner <web@mawalabs.de>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y nginx

COPY config/Procfile /
COPY config/nginx.conf /etc/nginx/nginx.conf
COPY bin/forego /usr/bin/forego

RUN chmod +x /usr/bin/forego

EXPOSE 80 443

CMD forego start
