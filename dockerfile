FROM php:7.2-apache

RUN apt-get update && apt-get install -y iputils-ping && apt-get install -y vim && apt-get install -y curl && a2enmod proxy && a2enmod proxy_http && service apache2 restart
COPY . /var/www/html

ADD proxy.conf /etc/apache2/sites-available/000-default.conf
