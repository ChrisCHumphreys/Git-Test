# File: Makefile
# Date: 03/30/18
# Author: Chris Humphreys
#   -> Adapted from Makefile by Joshua Gearin
# Description: Makefile for the git-test assignment

# Compiler Version
CC=g++

# Debugging flag -g
DEBUG=-g

# Memory Mangagment Flags
MEMFLAGS=-fsanitize=address -fno-omit-frame-pointer

# Target
TARGET=test_run

# Compile with all errors and warnings
CFLAGS=-c -Wall $(DEBUG) 

# Makefile syntax:
# target: dependencies
#(tab) system command(s)

all: $(TARGET)

$(TARGET): main.o  
	$(CC) $(MEMFLAGS) main.o -o $(TARGET)

main.o: main.cpp 
	$(CC) $(CFLAGS) main.cpp 

clean:
	rm -f *.o *~ $(TARGET) 

