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
	&& apt-get install -y php7.3-fpm	\
	&& mkdir -p /run/php

RUN	echo $TEST

COPY	www.conf /etc/php/7.3/fpm/pool.d/www.conf

ENTRYPOINT ["php-fpm7.3"]

CMD	["-F"]
