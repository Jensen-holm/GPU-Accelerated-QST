CC = g++
CFLAGS = -std=c++14
TARGETS = hps.out
INCLUDES =


all:
	$(CC) $(CFLAGS) -o $(TARGETS) main.cpp $(INCLUDES)

clean:
	rm -f $(TARGETS)

