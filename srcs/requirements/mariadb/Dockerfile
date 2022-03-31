# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anclarma <anclarma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/26 12:24:15 by anclarma          #+#    #+#              #
#    Updated: 2022/03/26 22:46:33 by anclarma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster

RUN	apt-get update	\
	&& apt-get upgrade -y	\
	&& apt-get install -y mariadb-server procps	\
	&& mkdir -p /var/lib/mysql	\
	&& mkdir -p /var/run/mysqld

COPY	my.cnf /etc/mysql/.
COPY	wordpress.sql /wordpress.sql

COPY	entrypoint-mariadb.sh /entrypoint-mariadb.sh
RUN	chmod +x /entrypoint-mariadb.sh

ENTRYPOINT ["/entrypoint-mariadb.sh"]
