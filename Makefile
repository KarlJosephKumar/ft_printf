# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kakumar <kakumar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/15 15:18:20 by kakumar           #+#    #+#              #
#    Updated: 2022/11/16 11:31:32 by kakumar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAGS = -Wall -Wextra -Werror

SRC = ft_printf.c ft_putchar_count.c ft_putlohex_count.c ft_putnbr_count.c ft_putpointer_count.c\
 ft_putstr_count.c ft_putuphex_count.c ft_putusnbr_count.c

OBJECTFILES = ft_printf.o ft_putchar_count.o ft_putlohex_count.o ft_putnbr_count.o ft_putpointer_count.o\
 ft_putstr_count.o ft_putuphex_count.o ft_putusnbr_count.o

NAME = libftprintf.a

LIBFT = libft/

all: $(NAME)

$(NAME):
	cd $(LIBFT) && $(MAKE)
	cp $(LIBFT)libft.a $(NAME)
	cc -c $(SRC) $(FLAGS)
	ar rcs $(NAME) $(OBJECTFILES)

clean:
	rm -f $(OBJECTFILES) $(OBJECTFILES_BONUS)
	cd $(LIBFT) && $(MAKE) clean

fclean: clean
	rm -f $(NAME)
	cd $(LIBFT) && $(MAKE) fclean

re: fclean all

.PHONY: all clean fclean re