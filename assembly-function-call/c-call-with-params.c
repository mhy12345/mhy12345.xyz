#include<stdio.h>
#define BUFFER_SIZE 5

int getbuf(int a,int b,int c,int d,int e,
		int f,int g,int h,int i,int j) {
	char buf[BUFFER_SIZE];
	buf[0] = a;
	buf[1] = b;
	buf[2] = c;
	buf[3] = d;
	buf[4] = e;
	buf[0] = f;
	buf[1] = g;
	buf[2] = h;
	buf[3] = i;
	buf[4] = j;
	gets(buf);
	return 1;
}
int main() {
	int t = getbuf(1,2,3,4,5,6,7,8,9,10);
	printf("%d\n",t);
}
