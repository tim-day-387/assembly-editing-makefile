# Set CFLAGS to activate all warnings and enable debugger
CFLAGS = -Wall -g

# Default rule is to build the executable called hello
all: hello

# Rule for building the executable
hello: hello.o
	gcc $(CFLAGS) hello.o -o hello

# Rules for building each object file
hello.o: hello.s.edit
	as -o hello.o hello.s.edit

hello.s.edit: hello.s
	cp hello.s hello.s.edit
	sed -i 's/hello, world/This is a test for editing assembly./g' hello.s.edit

hello.s: hello.i
	cc -S hello.i

hello.i: hello.c
	cpp hello.c > hello.i

# Give command "make clean" to remove object files,
#  executable, and documentation.
clean:
	rm *.o *.i *.s *.s.edit
	rm hello
