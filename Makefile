CFLAGS = -O2 -g
PROGS = wcc-client wcc-server

all: $(PROGS)
.PHONY: all

wcc-client: wcc-client.o
wcc-client.o: wcc-client.c wcc.h

wcc-server: wcc-server.o
wcc-server.o: wcc-server.c wcc.h

clean:
	-rm -f $(PROGS) *.o
.PHONY: clean
