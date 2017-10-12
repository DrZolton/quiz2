all: build doczip

clean:
	rm -r *.o a.out *.class html/ latex/ myexe archive.tar.gz

build: *.cc *.h
	g++ *.cc -o myexe

myexe: *.cc *.h
	g++ *.cc -o myexe

doc: *.cc *.h
	doxygen Doxyfile

doczip:
	tar -zcvf archive.tar.gz html/ latex/
