all: GetAge.s
	gcc GetAge.s -g -c -o GetAge.o
	gcc GetAge.o -g -o GetAge -z noexecstack

run: GetAge.s
	gcc GetAge.s -g -c -o GetAge.o
	gcc GetAge.o -g -o GetAge -z noexecstack
	./GetAge

clean:
	rm *.o
