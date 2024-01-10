CC = nvcc
CFLAGS = -Xcompiler -Wall
SRC = src/main.cu
TARGETS = hello_cuda.out
KERNELS = $(wildcard ./src/kernels*.cu)

build:
	$(CC) $(SRC) -o $(TARGETS) $(KERNELS)

run:
	$(CC) $(SRC) -o $(TARGETS) $(KERNELS)
	./$(TARGETS)
	rm -r $(TARGETS)

clean:
	rm -r $(TARGETS)

