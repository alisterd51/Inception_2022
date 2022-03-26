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
	&& apt-get install -y nginx	\
	&& mkdir -p /etc/nginx/certificate

COPY	nginx.conf /etc/nginx/sites-available/default
COPY	nginx-certificate.crt /etc/nginx/certificate/nginx-certificate.crt
COPY	nginx.key /etc/nginx/certificate/nginx.key

ENTRYPOINT ["nginx"]

CMD	["-g", "daemon off;"]
