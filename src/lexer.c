#include <string.h>
#include "lexer.h"

Token new(void) {
  Token t;
  t.program = "+ - * / ";
  t.row = 0;
  t.column = 0;
  return t;
}

TokenType parse(Token token) {
  
}
