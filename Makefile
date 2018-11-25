MAKE=make

all: library test

library: 
	$(MAKE) -C library
	$(MAKE) -C library install

test: 
	$(MAKE) -C test

run_test:
	$(MAKE) -C test run_test

.PHONY: library test

clean:
	$(MAKE) -C library clean
	$(MAKE) -C test clean
