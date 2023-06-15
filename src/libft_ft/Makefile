# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sbhatta <sbhatta@student.42heilbronn.de    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/22 13:18:59 by sbhatta           #+#    #+#              #
#    Updated: 2023/06/15 14:18:16 by sbhatta          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
CFLAGS = -Wextra -Werror -Wall
AR = ar
CRS = crs
NAME = libft.a

SRC = 	./libft_to/ft_itoa.c  ./libft_to/ft_atoi.c ./libft_to/ft_toupper.c ./libft_to/ft_tolower.c ./libft_to/ft_atoi_long.c ./libft_is/ft_isspace.c \
		./libft_mem/ft_calloc.c ./libft_mem/ft_bzero.c ./libft_mem/ft_memcpy.c \
		./libft_mem/ft_memset.c ./libft_mem/ft_memchr.c ./libft_mem/ft_memmove.c ./libft_mem/ft_memcmp.c \
		./libft_put/ft_putchar_fd.c ./libft_put/ft_putstr_fd.c ./libft_put/ft_putendl_fd.c ./libft_put/ft_putnbr_fd.c \
		./libft_is/ft_isdigit.c ./libft_is/ft_isalnum.c ./libft_is/ft_isalpha.c  ./libft_is/ft_isascii.c ./libft_is/ft_isprint.c \
		./libft_str/ft_strlen.c ./libft_str/ft_strlcat.c ./libft_str/ft_strlcpy.c ./libft_str/ft_strchr.c \
		./libft_str/ft_strrchr.c ./libft_str/ft_strnstr.c ./libft_str/ft_strtrim.c ./libft_str/ft_strncmp.c \
		./libft_str/ft_substr.c ./libft_str/ft_split.c ./libft_str/ft_strmapi.c \
		./libft_str/ft_strjoin.c ./libft_str/ft_striteri.c ./libft_str/ft_strdup.c \
		./libft_list/ft_lstadd_front.c ./libft_list/ft_lstnew.c ./libft_list/ft_lstadd_back.c \
		./libft_list/ft_lstsize.c ./libft_list/ft_lstlast.c ./libft_list/ft_lstdelone.c \
		./libft_list/ft_lstclear.c ./libft_list/ft_lstiter.c ./libft_list/ft_lstmap.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(CRS) $@ $^

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $< 

clean: 	
	rm -f $(OBJ)
fclean: clean
	rm -f $(NAME)
re:	fclean all

.PHONY:	all clean fclean re bonus