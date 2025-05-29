import gleam/io
import gleam/string
import gleam/list

pub type TokenType {
  Plus
  Minus
  Mult
  Div
  EOF
}

pub fn parse_string(src: String) -> List(String) {
  string.split(src, on: " ")
}

pub fn parse(code: List(String), types: List(TokenType)) -> List(TokenType) {
  case code {
    ["+", ..rest] -> {
      let types = [Plus, ..types]
      parse(rest, types)
    }
    ["-", ..rest] -> {
      let types = [Minus, ..types]
      parse(rest, types)
    }
    ["*", ..rest] -> {
      let types = [Mult, ..types]
      parse(rest, types)
    }
    ["/", ..rest] -> {
      let types = [Div, ..types]
      parse(rest, types)
    }
    [head, ..] -> {
      io.println("ERROR: unrecognized char found in src:" <> head)
      panic
    }
    _ -> {
      let types = [EOF, ..types]
      list.reverse(types)
    }
  }
}

pub fn main() {
  let src = parse_string("+ - * /")
  let types: List(TokenType) = []
  let types = parse(src, types)
  echo types  
}
