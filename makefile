#Set directories
SDIR = src
IDIR =include
ODIR=obj

#Set compiler
CC=g++

#Set flags
CFLAGS=-I$(IDIR)

LDIR =lib
LIBS=-lm

#Spesify dependencies
_DEPS = SPS.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

#Adjust path to source files
_OBJ = main.o SPS.o 
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

EXE = SPS

#Rule for compiling
$(ODIR)/%.o: $(SDIR)/%.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

#Linking
$(EXE): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

run: $(EXE)
	./$(EXE)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ 

