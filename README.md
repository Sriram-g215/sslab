# sslab
To compile lex:
  Save as .l
  compile using "lex file.l"
  cc lex.yy.c -ll
To compile yacc:
  Save as .y
  compile using "yacc file.y -d"
  compile lex using "lex file.l"
  cc lex.yy.c y.tab.c -ll -ly
 Output: ./a.out
