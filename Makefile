var = $(cat cp.txt)

all: tp1

tp1: tp1.o 
	gcc -o tp1 tp1.o

tp1.o: tp1.c
	gcc -o tp1.o -c tp1.c -W -Wall -std=11 -pedantic
test: tp1 data
	./tp1 -c ${var} -d -k 17 -i fichier.in

data: 
	mkdir data
	wget https://www.github.com/guyfrancoeur/INF3135_E2019_TP/raw/master/crypto-data.zip
	mv crypto-data.zip data
	unzip data/crypto-data.zip -d data
	rm -f data/crypto-data.zip
	
.PHONY: clean mrproper data

clean:
	rm -rf *.o tp1
