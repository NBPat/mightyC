#my first

# gcc -c -I ./ main.c
# gcc -c -v -I./SRC function.c
# gcc -o Binary main.o function.o

all:  main.o function.o
	@echo "Building..."             # To print "Building.." message
	gcc -o Binary main.o function.o

main:  main.c
	gcc main.c -I./SRC -S -c main.o 
	gcc main.c -S -I../INC/

function: function.c
	gcc function.c -I./SRC -S -c function.o 

clean:
	echo "cleaning .."
	rm -rf *.s
	rm -rf *.o
	rm -rf Binary

