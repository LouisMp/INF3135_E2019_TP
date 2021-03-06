var := $(shell cat cp.txt)

tp1: tp1.o 
	gcc -o tp1 tp1.o
ifndef VERBOSE
.SILENT:
	
endif

tp1.o: tp1.c
	gcc -o tp1.o -c tp1.c -W -Wall -std=c11 -pedantic
test: tp1
	make mrpropre
	make data
	./tp1 -c $(var) -k 17 -e -a data/crypto-msg01.alphabet  -o sortie_standard.out -i data/crypto-msg01.in && diff --brief -b -s data/crypto-msg01.out sortie_standard.out
data: 
	mkdir data 
	wget -nv https://www.github.com/guyfrancoeur/INF3135_E2019_TP/raw/master/crypto-data.zip
	mv crypto-data.zip data
	unzip -qq data/crypto-data.zip -d data
	rm -f data/crypto-data.zip
resultat:
	git add note-du-tp.txt
	git commit
	git push
	
.PHONY: clean data test resultat mrpropre

mrpropre: 
	rm -rf data

clean: mrpropre
	rm -rf *.o tp1

default : all	
