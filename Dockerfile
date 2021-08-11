FROM php:8-apache

# Add mail
RUN apt-get update && apt-get install msmtp -y && \
    rm -rf /var/lib/apt/lists/*

# Add php modules
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

# Install php extensions
RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions gd mysqli gmagick ssh2 exif imagick mbstring sockets
# Optional features: gmagick ssh2 exif imagick mbstring sockets