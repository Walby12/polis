#include <stddef.h>

#ifndef LEXER_H
#define LEXER_H

typedef enum {
  Plus,
  Minus,
  Multiply,
  Division,
} TokenType ;

typedef struct {
  const char *program;
  size_t row;
  size_t column;
} Token;

Token new(void);

TokenType parse(Token token);

#endif
