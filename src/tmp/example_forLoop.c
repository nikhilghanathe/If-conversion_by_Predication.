
int example_forLoop(int a, int b, int c, int d){
	int t1, t, t2;

	t2 = 0;
	for(int i=0;i<10;i++){
		if(c>2){
			t = a+b;
		}
		else{
			t =  0;
		}

		t2 += t ; 

	}

	
	return t2;
}
