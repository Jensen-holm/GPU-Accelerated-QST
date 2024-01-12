CC = nvcc
CFLAGS = -Xcompiler -Wall
TARGETS = hello_cuda.out
SRCDIR = src
UTILSDIR = $(SRCDIR)/utils

# Source files
MAIN_SRC = $(SRCDIR)/main.cu
MATRIX_SRC = $(UTILSDIR)/matrix.cu

# Object files
MAIN_OBJ = $(SRCDIR)/main.o
MATRIX_OBJ = $(UTILSDIR)/matrix.o

build: $(TARGETS)

$(TARGETS): $(MAIN_OBJ) $(MATRIX_OBJ)
	$(CC) $(MAIN_OBJ) $(MATRIX_OBJ) -o $(TARGETS)

$(MAIN_OBJ): $(MAIN_SRC)
	$(CC) $(CFLAGS) -c $(MAIN_SRC) -o $(MAIN_OBJ)

$(MATRIX_OBJ): $(MATRIX_SRC)
	$(CC) $(CFLAGS) -c $(MATRIX_SRC) -o $(MATRIX_OBJ)

run: build
	./$(TARGETS)

clean:
	rm -f $(MAIN_OBJ) $(MATRIX_OBJ) $(TARGETS)
