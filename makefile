#FLAGS
ADD_FLAGS = -ly 

#Files
FILES = lexer.cpp\
	y.tab.c\
	parser.cpp\
	symbolTable.cpp\
	analyzer.cpp\
	IRcodegen.cpp\
	MIPSgen.cpp


all:parser

y.tab.c y.tab.h:translate.y
	yacc -dv $^

parser:$(FILES)
	g++ -o $@ $^ $(ADD_FLAGS) 


