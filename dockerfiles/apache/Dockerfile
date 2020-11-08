FROM php:7.4.11-apache

RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli

RUN mkdir /Cinema-App-Logic

COPY ././Cinema-App/ /Cinema-App-Logic/


RUN cp -r /Cinema-App-Logic/* /var/www/html/.

#mongo db extention for php
# ??