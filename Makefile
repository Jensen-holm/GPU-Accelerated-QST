CC = nvcc
TARGETS = hello_cuda.out
KERNELS = src/kernels/hello_world1.cu src/kernels/hello_world1.cu

build:
	$(CC) src/main.cu -o $(TARGETS) $(KERNELS)

run:
	$(CC) src/main.cu -o $(TARGETS) $(KERNELS)
	./$(TARGETS)
	rm -r $(TARGETS)

clean:
	rm -r $(TARGETS)
