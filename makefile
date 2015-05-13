CC = g++
SRCS := $(wildcard ./src/*.cpp ./src/socks/*.cpp ./src/utils/*.cpp ./src/thread/*.cpp ./src/th3rd/*.cpp)
OBJS := $(patsubst %cpp,%o,$(SRCS))
DEBUG :=
LFLAGS := $(DEBUG) -static
all : $(OBJS)
	$(CC) -o ./bin/xsocks $^ -lpthread $(LFLAGS)

%.o: %.cpp
	$(CC)     -c  $<    -o   $@    -I./src -DLINUX $(DEBUG)

clean :
	rm ./src/*.o
	rm ./src/socks/*.o
	rm ./src/utils/*.o
	rm ./src/thread/*.o
	rm ./src/th3rd/*.o
