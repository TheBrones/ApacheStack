FROM php:8-apache

# add mail capability
RUN apt-get update && apt-get install msmtp -y && \
    rm -rf /var/lib/apt/lists/*