FROM php:7.4.11-apache

RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli

RUN mkdir /App-Logic

COPY ././App-Logic/ /App-Logic/


RUN cp -r /App-Logic/* /var/www/html/.

#mongo db extention for php
# ??