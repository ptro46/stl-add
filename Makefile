AR      = ar
RANLIB  = ranlib
CC      = gcc
CFLAGS 	= -D_GNU_SOURCE=1 -ggdb -Wall -Wmissing-declarations -Wshadow -Wstrict-prototypes -Wmissing-prototypes -Wpointer-arith -Wcast-qual -Wsign-compare -Wpedantic -fPIC
INCPATH	= -I. -I/usr/local/include -I../lib-basics
LINK	= gcc
LFLAGS	= -L/usr/local/lib/ -L../lib-basics
LIBS	= -lbasics

.SUFFIXES:	.o .c

HEADERS = 
SOURCES_ADD = stl-add.c
OBJECTS_ADD = stl-add.o
EXE_ADD = stl-add

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

all: $(EXE_ADD)

$(EXE_ADD): $(OBJECTS_ADD)
	$(LINK) $(LFLAGS) -o $(EXE_ADD) $(OBJECTS_ADD) $(LIBS)

clean:
	rm -f $(OBJECTS_ADD) $(EXE_ADD) *~ *.bin


