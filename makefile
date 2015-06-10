################################################################
############ Date: September 4 2012
############ Author: Vincent Dary
############ File: makefile
############ Licence: GPLv3
############ Description: compiles the ArpSpoof program
################################################################

.PHONY: clean, mrproper
.SUFFIXES:

BIN = ArpSpoof
CC = gcc
CFLAGS = -W -Wall

all: main.o CmdLineTtmt.o ArpSpoof.o 
	$(CC) $^ -o $(BIN) $(CFLAGS)
  
main.o: CmdLineTtmt.h ArpSpoof.h
 
%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)	

clean:
	rm -rf *.o
