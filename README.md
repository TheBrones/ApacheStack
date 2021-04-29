# apachestack
 PHP-apache with some mods

Don't forget to add a file in the mount /etc/msmtprc:

msmtprc
account default
host mailserver.com
port 25
from "php@email.com"
logfile /folder/msmtp.log