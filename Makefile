CXX=g++
CXXFLAGS=-Wall -std=c++14
CC=$(CXX)
all : newton_example

newton_example : main.o newton.o
	## link the object files "main.o" and "newton.o" into
	## an executable named newton_example
	$(CC) -o newton_example main.o newton.o

newton.o : newton.cpp newton.h
	## build an object file named "newton.o" from
	## compiling the source file "newton.cpp"
	$(CC) $(CXXFLAGS) -c newton.cpp

main.o : main.cpp newton.h
	## build an object file named "main.o" from
	## compiling the source file "main.cpp"
	$(CC) $(CXXFLAGS) -c main.cpp

clean :
	## remove intermediate products of build
	## such as object files
	$(RM) *.o

distclean : clean
	## remove intermediate products of build
	## such as object files and also the final
	## product of the build
	$(RM) *.o newton_example


