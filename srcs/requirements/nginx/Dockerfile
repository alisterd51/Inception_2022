# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anclarma <anclarma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/26 12:24:15 by anclarma          #+#    #+#              #
#    Updated: 2022/03/26 14:40:14 by anclarma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster

RUN	apt-get update	\
	&& apt-get upgrade -y	\
	&& apt-get install -y nginx	openssl	\
	&& mkdir -p /etc/nginx/certificate	\
	&& openssl req -new	\
		-newkey rsa:4096	\
		-x509	\
		-sha256	\
		-days 365	\
		-nodes	\
		-out /etc/nginx/certificate/nginx-certificate.crt	\
		-keyout /etc/nginx/certificate/nginx.key	\
		-subj "/C=FR/ST=France/L=Paris/O=42/CN=anclarma"

COPY	nginx.conf /etc/nginx/sites-available/default

ENTRYPOINT ["nginx"]

CMD	["-g", "daemon off;"]
