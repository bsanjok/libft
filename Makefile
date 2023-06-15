# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sbhatta <sbhatta@student.42heilbronn.de    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/21 15:21:52 by sbhatta           #+#    #+#              #
#    Updated: 2023/06/15 14:26:45 by sbhatta          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
CFLAGS = -Wextra -Werror -Wall
AR = ar
CRS = crs
LIBFT_PATH = ./src/libft_ft
LIBFT = $(LIBFT_PATH)/libft.a
NAME = libftprintf.a

SRC = 	./src/ft_printf/ft_printf.c ./src/ft_printf/ft_print_hex.c ./src/ft_printf/ft_putnbr_long.c \
		./src/ft_printf/ft_printf_char.c ./src/ft_printf/ft_printf_str.c ./src/ft_printf/ft_printf_ptr.c \
		./src/ft_printf/ft_printf_count.c ./src/ft_printf/ft_printf_perc.c \
		./src/get_next_line/get_next_line.c
OBJ = $(SRC:.c=.o)

all:$(NAME)
$(NAME): $(LIBFT) $(OBJ) 
		@cp $(LIBFT) ./$(NAME)
		$(AR) $(CRS) $(NAME) $(OBJ)
$(LIBFT):
		@make all -C $(LIBFT_PATH)
%.o:%.c
		$(CC) -c $(CFLAGS) -o $@ $<
clean:
		make -C $(LIBFT_PATH) clean
		rm -f $(OBJ)
fclean: clean
		make -C $(LIBFT_PATH) fclean
		rm -f $(NAME)
re:		fclean all

.PHONY: all clean fclean re