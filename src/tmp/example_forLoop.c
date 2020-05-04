
int example_forLoop(int a, int b, int c[10], int d){
	int t1, t, t2;

	t2 = 0;
	for(int i=0;i<10;i++){
		if(t2>2){
			t = a+b;
		}
		else{
			t =  0;
		}

		t2 = t2 +t1; 

	}

	
	if(d==0)
		t1 = t *6;
	return t1;
}