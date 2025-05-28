#include <stdio.h>
#include "lexer.h"

int main() {
  struct Token token = new();
  printf("Row: %zu, Col: %zu, Program: %s", token.row, token.column, token.program);
  return 0;
}
