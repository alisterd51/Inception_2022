#!/bin/sh
mv /wordpress/* /var/www/html/.
chown -R www-data:www-data /var/www/html
exec php-fpm7.3 -F
