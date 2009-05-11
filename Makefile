all: c-euler Euler.class fortran-euler niceeuler.jar

c-euler: euler.c
	# -lgmp -I/opt/local/include -L/opt/local/lib
	gcc -m64 -o c-euler euler.c 

Euler.class: Euler.java
	javac -classpath apfloat.jar Euler.java

run-java: Euler.class
	java -classpath apfloat.jar:. Euler

fortran-euler: euler.for
	gfortran -m64 -fdefault-integer-8 euler.for -o fortran-euler

ScalaEuler.class: ScalaEuler.scala
	/opt/local/scala/bin/scalac -deprecation -classpath apfloat.jar ScalaEuler.scala

run-scala: ScalaEuler.class
	/opt/local/scala/bin/scala -classpath apfloat.jar:. ScalaEuler

niceeuler.jar: nice/euler/euler.nice
	nicec --sourcepath=nice -a niceeuler.jar euler

run-nice: niceeuler.jar
	java -jar niceeuler.jar

clean:
	\rm -f c-euler niceeuler.jar