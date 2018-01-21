CC=gcc
CXX=g++
RM=rm -f
CPPFLAGS=-O3
LDFLAGS=
LDLIBS=-lswscale -lturbojpeg -lavutil -lpthread -lueye_api -lsnappy

SRCS=$(wildcard *.cpp)
OBJS=$(subst .cpp,.o,$(SRCS))

all: camera

camera: $(OBJS)
	$(CXX) $(LDFLAGS) -o camera $(OBJS) $(LDLIBS) 

depend: .depend

.depend: $(SRCS)
	$(RM) ./.depend
	$(CXX) $(CPPFLAGS) -MM $^>>./.depend;

clean:
	$(RM) $(OBJS)

distclean: clean
	$(RM) *~ .depend

include .depend
