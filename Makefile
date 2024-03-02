# ## Version 1
# hello: main.cpp printHello.cpp factorial.cpp
# 	g++ -o hello main.cpp printHello.cpp factorial.cpp

# ## Version 2
# CXX = g++
# TARGET = hello
# OBJ = main.o factorial.o printHello.o

# $(TARGET) : $(OBJ)
# 	$(CXX) -o $(TARGET) $(OBJ)

# main.o : main.cpp
# 	$(CXX) -c main.cpp

# factorial.o : factorial.cpp
# 	$(CXX) -c factorial.cpp

# printHello.o : printHello.cpp
# 	$(CXX) -c printHello.cpp


# ## Version 3
# CXX = g++
# TARGET = hello
# OBJ = main.o factorial.o printHello.o

# CXXFLAGS = -c -Wall

# $(TARGET) : $(OBJ)
# 	$(CXX) -o $@ $^

# %.o : %.cpp
# 	$(CXX) $(CXXFLAGS) $< -o $@

# .PHONY : clean
# clean :
# 	rm -f *.o $(TARGET)


## Version 4
CXX = g++
TARGET = hello
SRC = $(wildcard *.cpp helloTest/*.cpp)
OBJ = $(patsubst %.cpp, %.o, $(SRC))

CXXFLAGS = -c -Wall

$(TARGET) : $(OBJ)
	$(CXX) -o $@ $^

%.o : %.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

.PHONY : clean
clean : 
	rm -f $(OBJ) $(TARGET)