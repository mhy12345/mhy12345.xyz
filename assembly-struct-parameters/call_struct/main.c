typedef struct{
	int aaa; int bbb; int ccc; int ddd; int eee;
}Type;
int i= 2;
int input_struct(Type in_struct)
{
	int ret = in_struct.eee + in_struct.aaa*2;
	return ret;
}

int function2()
{
	Type main_struct;
	main_struct.aaa = i;
	main_struct.bbb = 2*i;
	main_struct.ccc = i;
	main_struct.ddd = i;
	main_struct.eee = i;
	return input_struct(main_struct);
}
int main() {
	int a=123;
}
