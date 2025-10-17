function scr_tcscal(st,et,sx,ex,t,l){
	
	t=(t-st)/(et-st);
	
	if l==0{
		t=t;
	}
	else if l==1{
		t=sin(((t-1)*pi)/2)+1;
	}
	else if l==2{
		t=sin((t*pi)/2);
	}
	else if l==3{
		t=power(t,2);
	}
	else if l==4{
		t=1-power(t-1,2);
	}
	else if l==7{
		t=power(t,3);
	}
	else if l==8{
		t=1+power(t-1,3);
	}
	else if l==5{
		t=1-sqrt(1-power(t,2));
	}
	else if l==6{
		t=sqrt(1-power(t-1,2));
	}
	return (t*(ex-sx)+sx);
	
	
	
	/*

b: x
si: sin(((x-1)*pi)/2)+1
so: sin((x*pi)/2) 
i^2: x^2
o^2: 1-(x-1)^2
oi: 1-sqrt(1-x^2)
oo: sqrt(1-(x-1)^2)
i^3: x^3
o^3: 1+(x-1)^3


*/
}