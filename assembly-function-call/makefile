target : cpp.s c.s cpp-o2.s c-o2.s c-with-protector.s

cpp.s : cpp.cpp
	g++ cpp.cpp -o cpp -fno-stack-protector
	objdump -d cpp > cpp.s

c.s : c.c
	gcc c.c -o c -fno-stack-protector
	objdump -d c > c.s

cpp-o2.s :  cpp.cpp
	g++ cpp.cpp -o cpp-o2 -O2 -fno-stack-protector
	objdump -d cpp-o2 > cpp-o2.s

c-o2.s : c.c
	gcc c.c -o c-o2 -O2 -fno-stack-protector
	objdump -d c-o2 > c-o2.s

c-with-protector.s : c.c
	gcc c.c -o c-with-protector
	objdump -d c-with-protector > c-with-protector.s

clean : 
	rm c.s c cpp.s cpp cpp-o2 cpp-o2.s c-o2 c-o2.s c-with-protector c-with-protector.s

