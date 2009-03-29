all: c-euler

c-euler: euler.c
	# -lgmp -I/opt/local/include -L/opt/local/lib
	gcc -m64 -o c-euler euler.c 

clean:
	\rm -f c-euler