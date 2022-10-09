antisoSHELL: main.o prompt.o process.o execute.o builtin.o ls.o functions.o history.o autocomplete.o
	gcc -g main.o prompt.o process.o execute.o builtin.o ls.o functions.o history.o autocomplete.o -o antisoSHELL

main.o: main.c headers.h prompt.h process.h
	gcc -g -c main.c

prompt.o: prompt.c prompt.h headers.h
	gcc -g -c prompt.c

process.o: process.c process.h execute.h headers.h
	gcc -g -c process.c

execute.o: execute.c execute.h builtin.h ls.h functions.h history.h headers.h
	gcc -g -c execute.c

builtin.o: builtin.c builtin.h headers.h
	gcc -g -c builtin.c

ls.o: ls.c ls.h headers.h
	gcc -g -c ls.c

functions.o: functions.c functions.h headers.h
	gcc -g -c functions.c

history.o: history.c history.h headers.h
	gcc -g -c history.c

autocomplete.o: autocomplete.c autocomplete.h headers.h
	gcc -g -c autocomplete.c

clear:
	rm -f *.o antisoSHELL