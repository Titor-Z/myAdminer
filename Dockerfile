FROM php:7.4.13-apache

LABEL Author="Titor-Z<foolsecret@163.com>"

WORKDIR /etc/apt/
COPY ./sources.list   .

WORKDIR /var/www/html
COPY ./adminer-4.7.8-mysql.php ./index.php
COPY ./pepa-linha.css ./adminer.css

RUN docker-php-ext-install mysqli && \
    docker-php-ext-enable mysqli