
//file with multiple if-esle blocks
int example_statements_multiple(int a, int b, int c, int d){
	int  t, t1, t2, t3, t4, t5, t6, treduc;
	treduc = 0;
	for(int i=0;i<200;i++){
		if(c>1){
			t = a+b;
			t1 = d*5 + t;
		}
		else{
			t = a +d ;
		}

		if(t%2==0){
			t1 = a+2*b;
			t2 = 55+d;
			t3 =76/a;
			t4 = 56 + d*a;
		}
		else{
			t1 =  a+2*d;
			t2 = 644+d;
			t3 =76/b;
			t4 = 75*b + c*a;
		}

		
		if(t1>10){
			t2 = 3*a+ (b/d);
			t5 = t3 + t4;
			t6 = t4 * 8;
			t1 = t;
			t3 = t4 * t4;
		}
		else{
			t2 =  0;
			t5 = t2 + t4;
			t6 = t4 * 8;
			t1 = t/2;
			t3 = t4* t3;
		}

		
		if(t2>=t1){
			t2 =  t3+66;;
			t4 = t2*8 + t4;
			t5 = t4/ 8;
			t6 = t/2;
			t4 = t4* t3+ 87;
		}
		else{
			t3=  0;
		}

		
		if(t3+t2 >9){
			t4 = 0;
		}
		else{
			t2 =  t3+644;
			t4 = t3 + t4;
			t5 = t3/ 8;
			t6 = t5/2;
			t4 = t4* t3+ 87*t2;
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
		treduc +=t1+ t2 + t3 + t4 + t5 + t6;
	}

		



	return treduc;
}
