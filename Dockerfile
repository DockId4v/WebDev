FROM php:5.6-apache
MAINTAINER "David Rimbault"

RUN apt-get update \
 && apt-get install -y curl git
RUN curl -sS https://getcomposer.org/installer | php \
&& mv composer.phar /usr/local/bin/composer
RUN composer global require hirak/prestissimo
