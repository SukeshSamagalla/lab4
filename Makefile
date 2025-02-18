# Compiler
CC = gcc

# Source files
SRCS = main.c helpers.c commands.c ins_fun_RI.c ins_fun_U_LS.c ins_fun_BJ.c

# Header files
HEADERS = Simulator.h

# Executable name
TARGET = riscv_sim

# Default rule to build the target
all: $(TARGET)

# Rule to link source files and create the executable
$(TARGET): $(SRCS)
	$(CC) -o $(TARGET) $(SRCS)

# Clean rule to remove the executable
clean:
	rm -f $(TARGET)
