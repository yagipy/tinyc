CFLAGS=-std=c11 -g -static

tinyc: tinyc.c

test: tinyc
	./test.sh

clean:
	rm -f tinyc out*

.PHONY: test clean
