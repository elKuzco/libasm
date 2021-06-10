NAME = libasm.a

CC = nasm

FLAG = -felf64 -Wall -Werror

SRCS = ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_write.s \

OBJS = ${SRCS:.s=.o}

.s.o: ${SRCS}
	${CC} ${FLAG} $<

${NAME}: ${OBJS}
	ar rc ${NAME} ${OBJS}

all: ${NAME}

clean:
	rm ${OBJS}

fclean: clean
	rm ${NAME}

re: fclean all
