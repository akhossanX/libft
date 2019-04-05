# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akhossan <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/30 15:55:08 by akhossan          #+#    #+#              #
#    Updated: 2019/04/05 15:18:46 by akhossan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libft.a

CFLAGS		=	-Werror -Wall -Wextra

SRC			=	$(wildcard *.c)

OBJS		=	$(wildcard SRC:.c=.o)

OBJS_DIR	=	objs/	

all:$(NAME)

$(NAME):
	gcc -c $(CFLAGS) -I. $(SRC)
	mv $(OBJS) $(OBJS_DIR)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJS)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
