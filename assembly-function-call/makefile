target : cpp.s c.s cpp-o2.s c-o2.s

cpp.s : cpp.cpp
	g++ cpp.cpp -o cpp
	objdump -d cpp > cpp.s

c.s : c.c
	gcc c.c -o c
	objdump -d c > c.s

cpp-o2.s :  cpp.cpp
	g++ cpp.cpp -o cpp-o2 -O2
	objdump -d cpp-o2 > cpp-o2.s

c-o2.s : c.c
	gcc c.c -o c-o2 -O2
	objdump -d c-o2 > c-o2.s

clean : 
	rm c.s c cpp.s cpp cpp-o2 cpp-o2.s c-o2 c-o2.s

