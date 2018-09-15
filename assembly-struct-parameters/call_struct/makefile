main.s : main.c
	gcc main.c -o main -fno-stack-protector
	objdump -d main > main.s

clean : 
	rm main.s main
