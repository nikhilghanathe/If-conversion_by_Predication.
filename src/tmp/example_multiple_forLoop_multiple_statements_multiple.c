
//file with multiple if-esle blocks
int example_multiple_forLoop_multiple_statements_multiple(int a, int b, int c, int d){
	int  t, t1, t2, t3, t4, t5, t6, treduc;
	int  t_0, t1_0, t2_0, t3_0, t4_0, t5_0, t6_0, treduc_0;
	int  t_1, t1_1, t2_1, t3_1, t4_1, t5_1, t6_1, treduc_1;
	treduc = 0;
	treduc_1 = 0;
	treduc_0 = 0;

	for(int i=0;i<200;i++){
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
		treduc +=t1+ t5 + t3 +t6;
	}

		



	for(int i=0;i<300;i++){
		if(c>1){
			t_0 = a+b;
		}
		else{
			t_0 = a +d ;
		}

		if(t_0%2==0){
			t1_0 = a+2*b;
		}
		else{
			t1_0 =  a+2*d;
		}

		
		if(t1_0>10){
			t2_0 = 3*a+ (b/d);
		}
		else{
			t2_0 =  0;
		}

		
		if(t2_0>=t1_0){
			t3_0 = a+b;
		}
		else{
			t3_0=  0;
		}

		
		if(t3_0+t2_0 >9){
			t4_0 = 0;
		}
		else{
			t4_0 =  a*b + d;
		}

		
		if(t4_0==0){
			t5_0 = 70*a - 80*b;
		}
		else{
			t5_0 =  0;
		}

		
		if(t3_0%2==0 && t4_0==6 ){
			t6_0 = 76;
		}
		else{
			t6_0 =  d+91;
		}
		treduc_0 +=t1_0+ t5_0 + t3_0 +t6_0;
	}



	for(int i=0;i<270;i++){
		if(c>1){
			t_1 = a+b;
		}
		else{
			t_1 = a +d ;
		}

		if(t%2==0){
			t1_1 = a+2*b;
		}
		else{
			t1_1 =  a+2*d;
		}

		
		if(t1>10){
			t2_1 = 3*a+ (b/d);
		}
		else{
			t2_1 =  0;
		}

		
		if(t2_1>=t1_1){
			t3_1 = a+b;
		}
		else{
			t3_1=  0;
		}

		
		if(t3_1+t2 >9){
			t4_1 = 0;
		}
		else{
			t4_1 =  a*b + d;
		}

		
		if(t4_1==0){
			t5_1 = 70*a - 80*b;
		}
		else{
			t5_1 =  0;
		}

		
		if(t3_1%2==0 && t4_1==6 ){
			t6_1 = 76;
		}
		else{
			t6_1 =  d+91;
		}
		treduc_1 +=t1_1+ t5_1 + t3_1 +t6_1;
	}



	return treduc +  treduc_1 +treduc_0 ;
}