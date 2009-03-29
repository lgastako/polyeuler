all: c-euler Euler.class

c-euler: euler.c
	# -lgmp -I/opt/local/include -L/opt/local/lib
	gcc -m64 -o c-euler euler.c 

Euler.class: Euler.java
	javac -classpath apfloat.jar Euler.java

run-java: Euler.class
	java -classpath apfloat.jar:. Euler

clean:
	\rm -f c-euler