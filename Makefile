CFLAGS=-g -Wall
LTEST_OBJS=ltest.o
LTEST_SRCS=$(LTEST_OBJS:%.o=%.c)
LTEST_TARGET=ltest

ltest: $(LTEST_OBJS)
		$(CC) -o $(LTEST_TARGET) $(LTEST_OBJS) $(LDFLAGS)

PCAP_OBJS=pcap.o analyze.o checksum.o print.o
PCAP_SRCS=$(PCAP_OBJS:%.o=%.c)
PCAP_TARGET=pcap

pcap: $(PCAP_OBJS)
		$(CC) -o $(PCAP_TARGET) $(PCAP_OBJS) $(LDFLAGS)

clean:
		rm -f ltest *.o *~ tmp*
