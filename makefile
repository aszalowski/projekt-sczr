CC=gcc
CFLAGS=-Wall -pedantic
LDFLAGS=-lrt
AUDIOFLAGS=-lm -ldl -lpthread

all: master.o p1.o p2.o

p1.o: p1.c
	$(CC) -o $@ $< $(CFLAGS) $(LDFLAGS)

p2.o: p2.c
	$(CC) -o $@ $< $(CFLAGS) $(LDFLAGS)

master.o: master.c
	$(CC) -o $@ $< $(CFLAGS) $(LDFLAGS)

producer.o: producer.c
	$(CC) -o $@ $< $(CFLAGS) $(AUDIOFLAGS) $(LDFLAGS) 


clean:
	rm *.o
