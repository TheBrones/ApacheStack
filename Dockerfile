FROM php:8-apache

# Add mail capability
RUN apt-get update && apt-get install msmtp -y && \
    rm -rf /var/lib/apt/lists/*

# Add php modules
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions gd mysqli