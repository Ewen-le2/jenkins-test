##
## EPITECH PROJECT, 2022
## Makefile
## File description:
## Makefile
##

SRC		=	\
			main.c

SRC_DIR =	src/

PREFIX	=	$(addprefix $(SRC_DIR),$(SRC))

OBJ 	=	$(PREFIX:.c=.o)

NAME 	=	a.out

CFLAGS	=	-W -Wextra -Wall -Iinclude -g

LIBS	=

INCLUDE	=	-Iinclude/

ARG	+=	$(NAME) $(OBJ) $(INCLUDE) $(CFLAGS) $(LIBS)

all:	$(NAME)

$(NAME):	$(OBJ)
	gcc -o $(ARG)

clean:
	rm -f $(OBJ)

fclean:	clean
	rm -f $(NAME)

re: fclean all
