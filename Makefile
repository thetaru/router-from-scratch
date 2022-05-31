CFLAGS=-g -Wall
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)
TARGET=ltest

ltest: $(OBJS)
		$(CC) -o $(TARGET) $(OBJS) $(LDFLAGS)

clean:
		rm -f ltest *.o *~ tmp*
