FROM php:5.6-apache
RUN apt-get -y update
RUN apt-get -y install php5-common
RUN apt-get -y install libapache2-mod-php5
RUN apt-get -y install php5-cli
RUN apt-get -y install php-mysql
RUN apt-get -y install php-mbstring

RUN a2enmod rewrite
RUN service apache2 restart