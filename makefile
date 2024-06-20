GetAge: GetAge.s
	gcc GetAge.s -g -c -o GetAge.o
	gcc GetAge.o -g -o GetAge -z noexecstack

ReadFloat: ReadFloat.s
	gcc ReadFloat.s -g -c -o ReadFloat.o
	gcc ReadFloat.o -g -o ReadFloat -z noexecstack

clean:
	rm *.o ReadFloat ReadFloat2
