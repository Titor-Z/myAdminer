FROM php:8.3-apache

LABEL Author="Z.to<foolsecret@163.com>"

COPY ./sources.list /etc/apt/
COPY ./adminer-5.4.1.php /var/www/html/index.php
COPY ./filamentish.dark.css /var/www/html/adminer.css

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

EXPOSE 80