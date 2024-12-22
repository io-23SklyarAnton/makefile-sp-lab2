CXX = g++
CXXFLAGS = -std=c++17 -Iinclude
SOURCES = src/calculator.cpp src/main.cpp
OBJECTS = $(SOURCES:.cpp=.o)
TARGET = calculator_exec
LIBRARY = libcalculator.a

all: $(TARGET)

$(LIBRARY): src/calculator.o
    ar rcs $@ $^

$(TARGET): $(LIBRARY) src/main.o
    $(CXX) $(CXXFLAGS) -o $@ src/main.o -L. -lcalculator

%.o: %.cpp
    $(CXX) $(CXXFLAGS) -c $< -o $@

clean:
    rm -f $(OBJECTS) $(LIBRARY) $(TARGET)
