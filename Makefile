CC := gcc
CFLAGS := -Wall -Wextra -std=c11 -O3

SRC := src
TARGET := polis
OBJS := $(SRC)/main.o $(SRC)/lexer.o

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

$(SRC)/%.o: $(SRC)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

