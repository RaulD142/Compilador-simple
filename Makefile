all: bis flexeo compilacion
bis:
	bison -d Simple.y
compilacion:
	gcc -c Simple.tab.c
	gcc -c lex.yy.c
	gcc -o Simple Simple.tab.o lex.yy.o -lm
flexeo:
	flex Simple.lex
ejecutar:
	Simple test_simple
clean: 
	rm lex.yy.c
	rm Simple.tab.c
	rm Simple.tab.h