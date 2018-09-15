typedef struct{
	int  aaa; int bbb; int ccc; int ddd; int eee;
}Type;

int i = 2;

int foo(int x){
}

Type return_struct(int n) {
	Type local_struct;
	local_struct.aaa = 1*n;
	local_struct.bbb = 2*n;
	local_struct.ccc = 3*n;
	local_struct.ddd = 4*n;
	local_struct.eee = 5*n;
	i = local_struct.eee + local_struct.aaa*2;
	return local_struct;
}
int function1()
{
	Type main_struct = return_struct(i);
	i = main_struct.ddd;
	return 0;
}

Type function2() {
	Type main_struct_1;
	Type main_struct_2;
	main_struct_1 = return_struct(i);
	int local = 2;
	return return_struct(1);
}

int main() {
	function1();
}
