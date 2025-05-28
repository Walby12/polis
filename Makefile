polis:
	clang -Wall -Wextra src/main.c -o polis

run: polis
	./polis
