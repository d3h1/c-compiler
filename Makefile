CC = gcc
CFLAGS = -Wall -Wextra -g

SRC = $(wildcard src/*.c)
OBJ = $(SRC:.c=.o)

all: compiler

compiler: $(OBJ)
	$(CC) $(CFLAGS) -o build/compiler $(OBJ)

clean:
	rm -f $(OBJ) build/compiler
