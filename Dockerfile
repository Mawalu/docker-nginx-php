FROM mawalu/docker-php:latest

MAINTAINER Martin Wagner <web@mawalabs.de>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y nginx supervisor

COPY config/supervisord.conf /etc/supervisor/conf.d/suervisord.conf
COPY config/nginx.conf /etc/nginx/nginx.conf

RUN chmod +x /usr/bin/forego

EXPOSE 80 443

CMD forego start
