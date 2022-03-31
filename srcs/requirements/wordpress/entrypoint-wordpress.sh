#!/bin/sh

FILE=/var/www/html/index.php
if [ -f "$FILE" ]
then
	echo "wordpress is already installed"
else 
	echo "installing wordpress..."
	rm -rf /var/www/html/*
	mv /wordpress/* /var/www/html/.
	chown -R www-data:www-data /var/www/html
fi

exec php-fpm7.3 -F
