#!/bin/sh

mysql_install_db --user=root --basedir=/usr --datadir=/var/lib/mysql
mysqld --user=root &
sleep 2
mysql -e "CREATE USER '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';"
mysql -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME};"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';"
mysql -e "FLUSH PRIVILEGES;"
mysql -u root $DB_NAME < /wordpress.sql
pkill mysqld

mysqld --user=root
