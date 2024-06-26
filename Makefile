# Variables
CC = mpicc
CFLAGS = -Wall -fPIC
LIBPATHS=
INCLUDES=
LIBS = -lm -lxbraid_dyn -lmpi

# Targets
all: ex-01_dyn ex-heat_equation ex-heat_equation_2D not_dyn_h_e_2D ex-02_dyn ex-02

ex-01_dyn: ex-01_dyn.o
	$(CC) $(CFLAGS) $(INCLUDES) ex-01_dyn.o -o $@ $(LIBPATHS) $(LIBS)

ex-01_dyn.o: ex-01_dyn.c
	$(CC) -c $(CFLAGS) $(INCLUDES) $< -o $@

ex-02: ex-02.o
	$(CC) $(CFLAGS) $(INCLUDES) ex-02.o -o $@ $(LIBPATHS) -Wl,-rpath,$(LIBPATHS) $(LIBS)

ex-02.o: ex-02.c
	$(CC) -c $(CFLAGS) $(INCLUDES) $< -o $@

ex-02_dyn: ex-02_dyn.o
	$(CC) $(CFLAGS) $(INCLUDES) ex-02_dyn.o -o $@ $(LIBPATHS) -Wl,-rpath,$(LIBPATHS) $(LIBS)

ex-02_dyn.o: ex-02_dyn.c
	$(CC) -c $(CFLAGS) $(INCLUDES) $< -o $@

ex-heat_equation: ex-heat_equation.o
	$(CC) $(CFLAGS) $(INCLUDES) ex-heat_equation.o -o $@ $(LIBPATHS) -Wl,-rpath,$(LIBPATHS) $(LIBS)

ex-heat_equation.o: ex-heat_equation.c
	$(CC) -c $(CFLAGS) $(INCLUDES) $< -o $@

ex-heat_equation_2D: ex-heat_equation_2D.o
	$(CC) $(CFLAGS) $(INCLUDES) ex-heat_equation_2D.o -o $@ $(LIBPATHS) -Wl,-rpath,$(LIBPATH) $(LIBS)

ex-heat_equation_2D.o: ex-heat_equation_2D.c
	$(CC) -c $(CFLAGS) $(INCLUDES) $< -o $@

not_dyn_h_e_2D: not_dyn_h_e_2D.o
	        $(CC) $(CFLAGS) $(INCLUDES) not_dyn_h_e_2D.o -o $@ $(LIBPATHS) -Wl,-rpath,$(LIBPATH) $(LIBS)

not_dyn_h_e_2D.o: not_dyn_h_e_2D.c
	        $(CC) -c $(CFLAGS) $(INCLUDES) $< -o $@

clean:
	rm -f *.o *.out.* ex-01_dyn ex-heat_equation ex-heat_equation_2D not_dyn_h_e_2D ex-02_dyn ex-02
