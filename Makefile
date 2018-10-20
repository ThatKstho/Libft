# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ohachim <othmanehachim@gmail.com>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/04 22:28:01 by ohachim           #+#    #+#              #
#    Updated: 2018/10/19 15:46:49 by ohachim          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LSRC = ft_atoi.c ft_lstmap.c ft_putendl.c ft_strdup.c ft_strnequ.c ft_bzero.c ft_lstnew.c ft_putendl_fd.c ft_strequ.c ft_strnew.c ft_countlst.c ft_memalloc.c ft_putnbr.c ft_striter.c ft_strnstr.c ft_isalnum.c ft_memccpy.c ft_putnbr_fd.c ft_striteri.c ft_strrchr.c ft_isalpha.c ft_memchr.c ft_putstr.c ft_strjoin.c ft_strsplit.c ft_isascii.c ft_memcmp.c ft_putstr_fd.c ft_strlcat.c ft_strstr.c ft_isdigit.c ft_memcpy.c ft_simpleop.c ft_strlen.c ft_strsub.c ft_isprint.c ft_memdel.c ft_strcat.c ft_strlenc.c ft_strtrim.c ft_itoa.c ft_memmove.c ft_strchr.c ft_strmap.c ft_swpdress.c ft_lstadd.c ft_memset.c ft_strclr.c ft_strmapi.c ft_tolower.c ft_lstdel.c ft_plstcont.c ft_strcmp.c ft_strncat.c ft_toupper.c ft_lstdelone.c ft_putchar.c ft_strcpy.c ft_strncmp.c ft_lstiter.c ft_putchar_fd.c ft_strdel.c ft_strncpy.c
CC = gcc -c -Wall -Wextra -Werror
NAME = libft.a
LIBMK = ar rc
LINDX = ranlib
OBJ = ft_atoi.o ft_isdigit.o ft_lstiter.o ft_memcmp.o ft_putchar.o ft_putstr.o ft_strcmp.o ft_striteri.o ft_strmapi.o ft_strnstr.o ft_swpdress.o ft_bzero.o ft_isprint.o ft_lstmap.o ft_memcpy.o ft_putchar_fd.o ft_putstr_fd.o ft_strcpy.o ft_strjoin.o ft_strncat.o ft_strrchr.o ft_tolower.o ft_countlst.o ft_itoa.o ft_lstnew.o ft_memdel.o ft_putendl.o ft_simpleop.o ft_strdel.o ft_strlcat.o ft_strncmp.o ft_strsplit.o ft_toupper.o ft_isalnum.o ft_lstadd.o ft_memalloc.o ft_memmove.o ft_putendl_fd.o ft_strcat.o ft_strdup.o ft_strlen.o ft_strncpy.o ft_strstr.o ft_isalpha.o ft_lstdel.o ft_memccpy.o ft_memset.o ft_putnbr.o ft_strchr.o ft_strequ.o ft_strlenc.o ft_strnequ.o ft_strsub.o ft_isascii.o ft_lstdelone.o ft_memchr.o ft_plstcont.o ft_putnbr_fd.o ft_strclr.o ft_striter.o ft_strmap.o ft_strnew.o ft_strtrim.o
all: $(NAME) 

$(NAME) :
	$(CC) $(LSRC) 
	$(LIBMK) $(NAME) $(OBJ)
	$(LINDX) $(NAME)

clean:
	rm -f  *.o 

fclean: clean
	rm -f $(NAME)

re:	fclean all
