GCC=g++

UNAME := $(shell uname)

CFLAGS=-fpic
LFLAGS=-shared

ifeq ($(UNAME), Darwin)
CFLAGS=
LFLAGS=-dynamiclib
endif

all: deplib

deplib: deplib.cpp deplib.h
	$(GCC) $(CFLAGS) $(LFLAGS) deplib.cpp -o libdeplib.so

install: libdeplib.so
	mkdir -p ../lib
	mkdir -p ../include
	mv libdeplib.so ../lib
	cp deplib.h ../include

clean:
	rm -rf *~ *.o *.so

