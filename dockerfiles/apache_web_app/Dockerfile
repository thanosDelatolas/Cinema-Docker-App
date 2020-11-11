FROM php:7.4.11-apache

RUN apt-get update && apt-get install -y

RUN mkdir /Web-App

COPY ././Web-App/ /Web-App/


RUN cp -r /Web-App/* /var/www/html/.

