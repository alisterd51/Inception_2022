# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anclarma <anclarma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/26 11:33:27 by anclarma          #+#    #+#              #
#    Updated: 2022/03/26 14:35:01 by anclarma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

up:
	docker-compose -f srcs/docker-compose.yml up -d --build
down:
	docker-compose -f srcs/docker-compose.yml down
