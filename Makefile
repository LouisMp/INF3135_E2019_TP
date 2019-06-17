var = $(cat cp.txt)

all: tp1

tp1: tp1.o 
	gcc -o tp1 tp1.o

tp1.o: tp1.c
	gcc -o tp1.o -c tp1.c -W -Wall -std=11 -pedantic
test: tp1 data
	./tp1 -c ${var} -d -k 17 -i fichier.in

data: 
	

.PHONY: clean mrproper data

clean:
	rm -rf *.o

mrproper: clean
	rm -rf tp1
