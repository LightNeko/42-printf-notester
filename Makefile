NAME = libftprintf.a

CC = gcc 
CFLAGS = -Wextra -Werror -Wall 

SRCS = ft_printf.c \
	   ft_puthex_fd.c \
	   ft_putptr_fd.c \
	   ft_putunsigned_fd.c \
	   printfhandlers.c \
	   printfhandlers2.c \
	   ft_putchar_fd.c \
	   ft_putnbr_fd.c \
	   ft_putstr_fd.c

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all, clean, fclean, re
