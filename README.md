# Apachestack
 PHP-Apache with some mods to make a multi-puprose webserver in a single container.

Added components over PHP and Apache:
  - msmtp (for sending mail)
  - gd
  - mysqli
  - remoteip

Disabled at this time (but will work):
  - gmagick
  - ssh2
  - exif
  - imagick
  - mbstring
  - sockets

Don't forget to add a file in the mount /etc/msmtprc. 
This file configures the msmtp service to send outbound mail.
```conf
msmtprc
account default
host mailserver.com
port 25
from "php@email.com"
logfile /folder/msmtp.log
```

Other configuration paths to mount:
 - /etc/apache2/apache2.conf
 - /etc/apache2/sites-available/
 - /usr/local/etc/php/php.ini
You can mount these readonly if you'd like.

Last update: 21-01-2022
How van I automaticly update this image? Weekly pipeline does not seem push it to Docker Hub :/ 

# Sources
  - https://hub.docker.com/_/php
  - https://owendavies.net/articles/setting-up-msmtp/
  - https://github.com/mlocati/docker-php-extension-installer
  - https://www.globo.tech/learning-center/x-forwarded-for-ip-apache-web-server/
