# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anclarma <anclarma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/26 11:33:27 by anclarma          #+#    #+#              #
#    Updated: 2022/03/26 22:35:35 by anclarma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

up:
	mkdir -p /home/anclarma/data/db /home/anclarma/data/wp
	docker-compose -f srcs/docker-compose.yml --env-file srcs/.env up --build -d
down:
	docker-compose -f srcs/docker-compose.yml --env-file srcs/.env down
clean:	down
	sudo rm -rf /home/anclarma/data
