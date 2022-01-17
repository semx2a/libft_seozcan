# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: seozcan <seozcan@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/07 19:14:12 by seozcan           #+#    #+#              #
#    Updated: 2021/12/15 15:28:43 by seozcan          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# **************************************************************************** #
#                                TARGET                                        #
# **************************************************************************** #

NAME	= libft.a

# **************************************************************************** #
#                            SOURCES && OBJS                                   #
# **************************************************************************** #

SRCS	= ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c\
ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c ft_memcmp.c ft_memcpy.c\
ft_memmove.c ft_memset.c ft_strchr.c ft_strdup.c ft_strjoin.c ft_strlcat.c\
ft_strlcpy.c ft_strlen.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c\
ft_substr.c ft_tolower.c ft_toupper.c ft_split.c ft_itoa.c ft_strmapi.c\
ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c\
ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c\
ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c\
ft_putnbr_base.c get_next_line.c


OBJS	= ${SRCS:%.c=%.o}

# **************************************************************************** #
#                                COMPILERS                                     #
# **************************************************************************** #

CC		= gcc

CFLAGS	= -Wall -Wextra -Werror -c

AR		= ar

ARFLAGS	= rcs

# **************************************************************************** #
#                                 HEADERS                                      #
# **************************************************************************** #

INC		= libft.h

# **************************************************************************** #
#                                  MISC                                        #
# **************************************************************************** #

RM		= rm -f

# **************************************************************************** #
#                                SCRIPTS                                       #
# **************************************************************************** #

$(NAME):	${OBJS}
	${AR} ${ARFLAGS} ${NAME} ${OBJS} 

$(OBJS):	${SRCS}
	${CC} -I $(INC) ${CFLAGS} ${SRCS}

# **************************************************************************** #
#                                 RULES                                        #
# **************************************************************************** #

all:		${NAME}

clean:
	${RM} ${OBJS}

fclean:	clean
	${RM} ${NAME}

re:		fclean all

.PHONY:	all clean fclean re
