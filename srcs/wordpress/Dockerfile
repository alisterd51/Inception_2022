# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anclarma <anclarma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/26 12:24:15 by anclarma          #+#    #+#              #
#    Updated: 2022/03/26 17:19:11 by anclarma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster

RUN	apt-get update	\
	&& apt-get upgrade -y	\
	&& apt-get install -y php7.3-fpm php7.3-mysqli wget	\
	&& mkdir -p /run/php	\
	&& wget -O wordpress.tar.gz https://fr.wordpress.org/wordpress-5.9.2-fr_FR.tar.gz
#	&& mkdir -p /var/www/html	\
#	&& tar -xf wordpress.tar.gz -C /var/www/html	\
#	&& rm -f wordpress.tar.gz

ARG	test

RUN	touch ${test}

COPY	www.conf /etc/php/7.3/fpm/pool.d/www.conf

ENTRYPOINT ["php-fpm7.3"]

CMD	["-F"]
