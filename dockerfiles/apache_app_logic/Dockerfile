FROM php:7.4.11-apache

RUN apt-get update && apt-get install -y

RUN mkdir /App-Logic

COPY ././App-Logic/ /App-Logic/


RUN cp -r /App-Logic/* /var/www/html/.

