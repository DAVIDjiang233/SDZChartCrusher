if global.tools==0 exit;

if global.view<0||global.view>2 exit;

if (global.tools==1) {
	if array_length(global.choose)<2 exit;
	scr_cancellist();
	
		var _st=global.chartlist[global.choose[0]][1];
		var _et=global.chartlist[global.choose[array_length(global.choose)-1]][1];
	if _st==_et exit;
	if btn_tools.tools[0][2]==0 var _type=2;
	else if btn_tools.tools[0][2]==1 _type=6;
	else if btn_tools.tools[0][2]==2 _type=5;
	for(var i=array_length(global.choose)-1;i>=0;i--){
			global.chartlist[global.choose[i]][_type]=
			scr_tcscal(_st,_et,btn_tools.tools[0][0],btn_tools.tools[0][1],
			global.chartlist[global.choose[i]][1],btn_tools.tools[0][3]);
		}
	
	global.choose=[];
	mousein=0;
	global.pause=0;
}
if (global.tools==2) {
	if array_length(global.choose)<1 exit;
		var _x1=btn_tools.tools[1][0];
		var _x2=btn_tools.tools[1][1];
		var _temp;
		randomise();
		if btn_tools.tools[1][2]==1&&_x1<_x2{
			scr_cancellist();
	
		
		
			for(var i=array_length(global.choose)-1;i>=0;i--){
					global.chartlist[global.choose[i]][2]=random_range(_x1,_x2);
					_temp=random_range(_x1,_x2);
				}
	
			global.choose=[];
			mousein=0;
			global.pause=0;
		}
		else if btn_tools.tools[1][2]==0{
			_x1=round(_x1);
			_x2=round(_x2);
			if _x1<_x2{
				scr_cancellist();
	
		
		
				for(var i=array_length(global.choose)-1;i>=0;i--){
						global.chartlist[global.choose[i]][2]=irandom_range(_x1,_x2);
						_temp=irandom_range(_x1,_x2);
						_temp=irandom_range(_x1,_x2);
					}
	
				global.choose=[];
				mousein=0;
				global.pause=0;
			}
		}
}


