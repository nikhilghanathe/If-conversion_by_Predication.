
//file with multiple if-esle blocks
int example_multiple(int a, int b, int c, int d){
	int  t, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13;
	
	if(c>1){
		t = a+b;
	}
	else{
		t = a +d ;
	}

	if(t%2==0){
		t1 = a+2*b;
	}
	else{
		t1 =  a+2*d;
	}

	
	if(t1>10){
		t2 = 3*a+ (b/d);
	}
	else{
		t2 =  0;
	}

	
	if(t2>=t1){
		t3 = a+b;
	}
	else{
		t3=  0;
	}

	
	if(t3+t2 >9){
		t4 = 0;
	}
	else{
		t4 =  a*b + d;
	}

	
	if(t4==0){
		t5 = 70*a - 80*b;
	}
	else{
		t5 =  0;
	}

	
	if(t3%2==0 && t4==6 ){
		t6 = 76;
	}
	else{
		t6 =  d+91;
	}

	

	return t6;
}