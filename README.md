# Apachestack
 PHP-Apache with some mods to make a multi-puprose webserver in a single container.

Added components over PHP and Apache:
  - msmtp (for sending mail)
  - gd
  - mysqli

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

Last update 13-12-2021

# Sources
  - https://hub.docker.com/layers/php/library/php/apache/images/sha256-4807131aaf46a48c03548e4284456c08c3e0c2db40aea2299958cf54a02d1136?context=explore
  - https://owendavies.net/articles/setting-up-msmtp/
  - https://github.com/mlocati/docker-php-extension-installer
