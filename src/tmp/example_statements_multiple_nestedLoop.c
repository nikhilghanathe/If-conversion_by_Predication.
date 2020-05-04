
//file with multiple if-esle blocks
int example_statements_multiple_nestedLoop(int a, int b, int c, int d, int e[50], int f[50], int g[50]){
	int  t, t1, t2, t3, t4, t5, t6, treduc, tnested_0, tnested_1;
	int t_l[50], t_l1[50], t_l2[50]; 
	
	treduc = 0;
	tnested_0 = 0;
	for(int i=0;i<50;i++){
		t_l[i] = 0;
		t_l1[i] = 0;
		t_l2[i] = 0;

	}

	for(int i=0;i<200;i++){
		for(int j=0; j<10; j++){
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

			tnested_0 = t1 + t2 + t3+ t4 + t;

		}

		for(int j = 0; j<45;j++){
			if(e[i]>0){
				t_l[i] = c + f[i];
				t_l1[i] = f[i] + g[i];
				t_l2[i] = f[i%2] + g[i];
			}
			else{
				t_l[i%2] = e[i] + g[i];
				t_l1[i] = g[i];
				t_l2[i] = f[i%2] + g[0];
			}

		}



		if(tnested_0>10){
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
