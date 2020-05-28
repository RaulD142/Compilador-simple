all: Simple Simple.tab.o lex.yy.o
	gcc -o Simple Simple.tab.o lex.yy.o -lm

Simple.tab.o: Simple.tab.c
	gcc -c Simple.tab.c

Simple.tab.c: Simple.y
	bison -d Simple.y

lex.yy.o: lex.yy.c
	gcc -c lex.yy.c

lex.yy.c: Simple.lex
	flex Simple.lex

clean:
	rm *.tab.c
	rm *.tab.h
	rm *.yy.c
	rm *.o

try: Simple test_simple
	./Simple test_simple