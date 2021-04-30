# apachestack
 PHP-apache with some mods:
  - msmtp for mail
  - php8-mysql for mysql support


Don't forget to add a file in the mount /etc/msmtprc:
```conf
msmtprc
account default
host mailserver.com
port 25
from "php@email.com"
logfile /folder/msmtp.log
```

# sources
https://owendavies.net/articles/setting-up-msmtp/
https://github.com/mlocati/docker-php-extension-installer