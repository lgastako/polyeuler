all: c-euler Euler.class fortran-euler niceeuler.jar go-euler

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

ocaml-euler: euler.ml
	ocamlopt euler.ml -o ocaml-euler

go-euler: euler.6
	6l -o go-euler euler.6

euler.6: euler.go
	6g euler.go

ooc-euler: ooc-euler.ooc
	rock ooc-euler.ooc

rust-euler: euler.rs
	rustc euler.rs -o rust-euler

clean:
	\rm -f ooc-euler c-euler niceeuler.jar ocaml-euler *.o *.cm{i,x,o} *.6 go-euler rust-euler
