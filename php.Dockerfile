FROM php:7.4.3-apache
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN apt-get update -y && apt-get install -y libpng-dev
RUN apt-get install -y zlib1g-dev 
RUN docker-php-ext-install gd

RUN apt-get install -y zlib1g-dev libicu-dev g++ \
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl

RUN docker-php-ext-install exif

RUN chmod 777 -R /var/www/html
