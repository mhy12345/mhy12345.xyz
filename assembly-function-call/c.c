#include<stdio.h>
#define BUFFER_SIZE 5

int getbuf() {
	char buf[BUFFER_SIZE];
	gets(buf);
	return 1;
}
int main() {
	int t = getbuf();
	printf("%d\n",t);
}
