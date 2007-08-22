# makefile for building the gzip file I/O library

# == CHANGE THE SETTINGS BELOW TO SUIT YOUR ENVIRONMENT =======================

CC= gcc
CFLAGS= -O2 -Wall $(MYCFLAGS)
AR= ar rcu
RANLIB= ranlib
LD=gcc 
LDFLAGS=-O -shared -fpic
RM= rm -f
LIBS= -lm $(MYLIBS)

MYCFLAGS=-g
MYLDFLAGS=
MYLIBS=-lz -llua

# == END OF USER SETTINGS. NO NEED TO CHANGE ANYTHING BELOW THIS LINE =========

EXT=so
GZIO_V=0.9.0
GZIO_SO=	gzio.$(EXT).$(GZIO_V)
GZIO_O= lgziolib.o

ALL_O= $(GZIO_O)
ALL_T= $(GZIO_SO)
ALL_A= $(GZIO_SO)

default: all

all:	$(ALL_T)

o:	$(ALL_O)

a:	$(ALL_A)

$(GZIO_SO): $(GZIO_O)
	$(LD) $(LDFLAGS) -o $@ $? $(LIBS)

TAG_FILES = lgziolib.c lgziolib.h
tags: $(TAG_FILES)
	ctags $(TAG_FILES)

clean:
	$(RM) $(ALL_T) $(ALL_O) tags

depend:
	@$(CC) $(CFLAGS) -MM lgziolib.c

echo:
	@echo "PLAT = $(PLAT)"
	@echo "CC = $(CC)"
	@echo "CFLAGS = $(CFLAGS)"
	@echo "AR = $(AR)"
	@echo "RANLIB = $(RANLIB)"
	@echo "RM = $(RM)"
	@echo "MYCFLAGS = $(MYCFLAGS)"
	@echo "MYLDFLAGS = $(MYLDFLAGS)"
	@echo "MYLIBS = $(MYLIBS)"

# list targets that do not create files (but not all makes understand .PHONY)
.PHONY: all default o a clean depend echo none

# DO NOT DELETE

lgziolib.o: lgziolib.c lgziolib.h

# (end of Makefile)
