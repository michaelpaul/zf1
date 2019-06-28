# PHP 7.3 with apache just to keep the container running with docker-compose up
FROM php:7.3-apache
RUN apt-get update && apt-get install -y \
        git \
        unzip

# Install composer
ADD https://getcomposer.org/composer.phar /usr/local/bin/composer
RUN chmod 0755 /usr/local/bin/composer

# Deploy
COPY . /framework
WORKDIR /framework
