CC = gcc
CFLAGS = -Wall -g  -lpthread # -Wextra -Werror
LIBS = -L/usr/local/lib -lsctp
CFILES = list.c arguments.c network.c

all: 
	$(CC) $(CFLAGS) -o client client.c $(CFILES) $(LIBS) 
	$(CC) $(CFLAGS) -o server server.c $(CFILES) $(LIBS)
	$(CC) $(CFLAGS) -o agent agent.c $(CFILES) $(LIBS)

clean:
	rm -fr agent client server *.o
