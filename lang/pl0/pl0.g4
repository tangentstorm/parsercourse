program
= block '.'
;

block
= ( 'const' ident '=' number ( ',' ident '=' number )* ';' )?
  ( 'var' ident ( ',' ident )* ';' )?
  ( 'procedure' ident ';' block ';' )* 
  statement 
;

statement
= ( ident ':=' expression 
  | 'call' ident 
  | 'begin' statement ( ';' statement )* 'end'
  | 'if' condition 'then' statement
  | 'while' condtion 'do' statement
  )?
;

condition
= 'odd' expression
| expression ( '=' | '#' | '<' | '<=' | '>' | '>=' ) expression
;

expression
=  ( '+' | '-' )? term (( '+' | '-' ) term )*
;

term
= factor (( '*' | '/' ) factor )*
;

factor
= ident
| number
| '(' expression ')'
;

Ident  = Alpha ( Digit | Alpha )+ ;
Number = Digit+ | '$' HexDigit+ ;
fragment HexDigit = Digit | 'a' .. 'f' | 'A' .. 'F' ;
fragment Digit = '0'..'9' ;
