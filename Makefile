var = $(cat cp.txt)
key = $(cat data/crypto-msg01.cle)
action = $(cat data/crypto-msg01.action)

all: tp1

tp1: tp1.o 
	gcc -o tp1 tp1.o

tp1.o: tp1.c
	gcc -o tp1.o -c tp1.c -W -Wall -std=c11 -pedantic
test: tp1 data
	./tp1 -c ${var}a -k 17 -e -a data/crypto-msg01.alphabet  -i data/crypto-msg01.in
	diff -s data/crypto-msg01.out sortie_standard.out

data: 
	mkdir data
	wget https://www.github.com/guyfrancoeur/INF3135_E2019_TP/raw/master/crypto-data.zip
	mv crypto-data.zip data
	unzip data/crypto-data.zip -d data
	rm -f data/crypto-data.zip
resultat:
	git add note-du-tp.txt
	git commit
	git push
	
.PHONY: clean data

clean:
	rm -rf *.o tp1 data
