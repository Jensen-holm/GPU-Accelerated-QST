CC = nvcc
TARGETS = hps.out
KERNELS = $(wildcard ./src/kernels*.cu)
UTILS = $(wildcard ./src/utils*.cpp)
MAINSRC = ./src/main.cu

build:
	$(CC)  $(MAINSRC) -o $(TARGETS) $(KERNELS)

run:
	$(CC) $(MAINSRC) -o $(TARGETS) $(KERNELS)
	./$(TARGETS)
	rm -r $(TARGETS)

clean:
	rm -r $(TARGETS)
