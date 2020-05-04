
//file with multiple if-esle blocks
int example_nestedLoop(int a, int b, int c, int d, int e[50], int f[50], int g[50]){
	int  t, t1, t2, t3, t4, t5, t6, treduc, tnested_0, tnested_1;
	int t_l[50], t_l1[50], t_l2[50]; 
	
	treduc = 0;

	for(int i=0;i<200;i++){
		for(int j=0; j<10; j++){
			if(c>1){
				t = a+b;
				t1 = d*5 + t;
			}
			else{
				t = a +d ;
				t1 = a*b*c;
			}
		treduc += t;
		}


	}

		



	return treduc;
}
