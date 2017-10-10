# Compiler Options
CC=clang -g -O0 -fPIC -D_XOPEN_SOURCE=700 -std=c11 -Wmain -W -Wall -Wthread-safety -pedantic -pedantic-errors
CCS=-fsanitize=address,undefined,leak

# Sources
SOURCES=src/print_sierpinski.c

# Binaries
BIN=bin

# Executable names
EXECUTABLE=$(BIN)/print_sierpinski
EXECUTABLE_VG=$(BIN)/print_sierpinski_vg
EXECUTABLELIST=$(EXECUTABLE) $(EXECUTABLE_VG) 

# Targets
all:
	mkdir $(BIN)
	$(CC) $(CCS) -o $(EXECUTABLE) $(SOURCES)
	$(CC) -o $(EXECUTABLE_VG) $(SOURCES)

clean:
	rm $(EXECUTABLELIST)
	rmdir $(BIN)
