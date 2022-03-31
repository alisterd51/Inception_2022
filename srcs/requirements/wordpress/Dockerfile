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

#Install utils
RUN	apt-get update	\
	&& apt-get upgrade -y	\
	&& apt-get install -y php7.3-fpm php7.3-mysqli php7.3-curl php7.3-dom php7.3-imagick php7.3-mbstring php7.3-zip php7.3-gd php7.3-intl wget

#Download wordpress
RUN	wget -O wordpress.tar.gz https://fr.wordpress.org/wordpress-5.9.2-fr_FR.tar.gz	\
	&& tar -xf wordpress.tar.gz	\
	&& rm -rf wordpress.tar.gz

#Config wordpress
ARG	db_name
ARG	db_user
ARG	db_password
ARG	db_host
COPY	wp-config.php wordpress/wp-config.php
RUN	sed -i 's/votre_nom_de_bdd/'$db_name'/' wordpress/wp-config.php	\
	&& sed -i 's/votre_utilisateur_de_bdd/'$db_user'/' wordpress/wp-config.php	\
	&& sed -i 's/votre_mdp_de_bdd/'$db_password'/' wordpress/wp-config.php	\
	&& sed -i 's/localhost/'$db_host'/' wordpress/wp-config.php

#Config php-fpm
COPY	www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN	mkdir -p /run/php

COPY	entrypoint-wordpress.sh /entrypoint-wordpress.sh
RUN	chmod +x /entrypoint-wordpress.sh

ENTRYPOINT ["/entrypoint-wordpress.sh"]
