# Define compiler
CXX = g++

# Compiler flags
CXXFLAGS = -std=c++11 -Wall

# Name of the executable
TARGET = student_sort

# Source files
SRC = student_sort.cpp

# Object files
OBJ = $(SRC:.cpp=.o)

# Default target to build the program
all: $(TARGET)

# Rule to create the executable
$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJ)

# Rule to compile .cpp to .o files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up build files
clean:
	rm -f $(OBJ) $(TARGET)

# Run the program
run: $(TARGET)
	./$(TARGET)
