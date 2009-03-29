all: c-euler Euler.class fortran-euler

c-euler: euler.c
	# -lgmp -I/opt/local/include -L/opt/local/lib
	gcc -m64 -o c-euler euler.c 

Euler.class: Euler.java
	javac -classpath apfloat.jar Euler.java

run-java: Euler.class
	java -classpath apfloat.jar:. Euler

fortran-euler: euler.for
	gfortran euler.for -o fortran-euler

clean:
	\rm -f c-euler