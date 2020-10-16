# -*-Makefile-*- for f90 files
##
FC     = gfortran
FFLAGS = -Wall -g -ffree-form
TESTS = f90tests

check: $(TESTS)
	./f90tests

clean:
	rm -f fdice $(TESTS) *.o *.mod
