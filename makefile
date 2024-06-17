all: PrintInt.s
	gcc PrintInt.s -g -c -o PrintInt.o
	gcc PrintInt.o -g -o PrintInt -z noexecstack

run: PrintInt.s
	gcc PrintInt.s -g -c -o PrintInt.o
	gcc PrintInt.o -g -o PrintInt -z noexecstack
	./PrintInt

clean:
	rm *.o
