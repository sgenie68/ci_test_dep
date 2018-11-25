MAKE=make

all: deplib

deplib: 
	$(MAKE) -C library
	$(MAKE) -C library install

.PHONY: library

clean:
	$(MAKE) -C library clean
