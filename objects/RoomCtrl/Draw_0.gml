draw_set_font(global.fontall);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);



var _zwrite = gpu_get_zwriteenable();
var _ztest = gpu_get_ztestenable();
gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);
var _depth = gpu_get_depth();

gpu_set_depth(8000);
draw_set_color(#00aaff);

if global.view<3{
	draw_set_color(#777777);
	draw_rectangle(446+movex,0,754+movex,608,0);


	draw_set_color(c_black);

	draw_rectangle(454+movex,0,546+movex,600,0);
	draw_rectangle(554+movex,0,646+movex,600,0);
	draw_rectangle(654+movex,0,746+movex,600,0);

}
else if global.view==3{
	
	
	draw_rectangle(192,325,2000,558,0);


	draw_set_color(c_black);
	draw_rectangle(200,325,2000,550,0);

	draw_set_color(c_yellow);
	draw_rectangle(192,400,200,475,0);
	draw_rectangle(192,250,200,325,0);

	draw_set_color(c_fuchsia);
	draw_rectangle(192,175,200,250,0);
	
}
else if global.view==4{
	
	
	draw_rectangle(1174,325,0,558,0);


	draw_set_color(c_black);
	draw_rectangle(1166,325,0,550,0);

	draw_set_color(c_yellow);
	draw_rectangle(1174,400,1166,475,0);
	draw_rectangle(1174,250,1166,325,0);

	draw_set_color(c_fuchsia);
	draw_rectangle(1174,175,1166,250,0);
	
}
else if global.view==5{
	
	draw_triangle(384, 150, 64, (380+highsdz)*5/4+150, 704, (380+highsdz)*5/4+150, false);

	draw_set_color(c_black);
	draw_triangle(384, 150, 84, (380+highsdz)*5/4+150, 279, (380+highsdz)*5/4+150, false);
	draw_triangle(384, 150, 289, (380+highsdz)*5/4+150, 479, (380+highsdz)*5/4+150, false);
	draw_triangle(384, 150, 489, (380+highsdz)*5/4+150, 684, (380+highsdz)*5/4+150, false);
	draw_rectangle(0,100,500,(380+highsdz)*5/94+150,false);
	
	

	
}


var _endtime=global.charttime+600/global.chartspeed;

var _size;
var _list=global.list;

if global.view<3{
	if global.barline>0{
	
		
		for (var i = 0; i < array_length(global.barlist); i++) {
				draw_set_color(global.barlist[i][1]);
		        var bar_time = global.barlist[i][0];
		
				var _y=(global.charttime-bar_time)*global.chartspeed+600
				if global.barlist[i][1]==#FC3636 
					draw_line_width(446+movex,_y,754+movex,_y,5);
				else if global.barlist[i][1]==#813BC6||global.barlist[i][1]==#0093FD
					draw_line_width(446+movex,_y,754+movex,_y,4);
				else if global.barlist[i][1]==#F2C94C||global.barlist[i][1]==#D34B8C
					draw_line_width(446+movex,_y,754+movex,_y,3);
				else draw_line_width(446+movex,_y,754+movex,_y,2);
		}
		
	}
	
}


if global.view==3{
	while(_list>=0&&global.chartlist[_list][1]>=global.charttime){
		if (   global.showhigh[0]<=global.chartlist[_list][2]
		&&global.showhigh[1]>=global.chartlist[_list][2]){
			if global.chartlist[_list][5]==1 _size=0.75;
			else _size=global.chartlist[_list][5];
			var _high=global.chartlist[_list][6];
			
			var _y=(global.chartlist[_list][1]-global.charttime)*global.chartspeed*2;
			
			gpu_set_depth(-100*global.chartlist[_list][2]);
			
		
			if(array_get_index(global.choose, _list)==-1){
				if global.chartlist[_list][7]>0.5{
				draw_set_color(#770000);
				}
				else draw_set_color(#444444);
			}
			else draw_set_color(#009900);
			
			for(var _stuck=global.chartlist[_list][4];_stuck<global.chartlist[_list][3];_stuck++){
			draw_circle(200+_y,550-(50*_size)-(37.5*(_high+_stuck*2*global.chartlist[_list][5])),50*_size,0);
			}


			if _size>0{
		
				if (global.chartlist[_list][0]=="D") draw_set_color(#ffffff);
				else if (global.chartlist[_list][0]=="X") draw_set_color(#ffff00);
				else if (global.chartlist[_list][0]=="S") draw_set_color(#00ffff);
			}
			else {
				if (global.chartlist[_list][0]=="D") draw_set_color(#999999);
				else if (global.chartlist[_list][0]=="X") draw_set_color(#999900);
				else if (global.chartlist[_list][0]=="S") draw_set_color(#009999);
		
			}
			for(var _stuck=global.chartlist[_list][4];_stuck<global.chartlist[_list][3];_stuck++){
			draw_circle(200+_y,550-(50*_size)-(37.5*(_high+_stuck*2*global.chartlist[_list][5])),40*_size,0);
			
			}
		}
		_list--;
	}

}
if global.view==4{
	while(_list>=0&&global.chartlist[_list][1]>=global.charttime){
		if (   global.showhigh[0]<=global.chartlist[_list][2]
		&&global.showhigh[1]>=global.chartlist[_list][2]){
			if global.chartlist[_list][5]==1 _size=0.75;
			else _size=global.chartlist[_list][5];
			var _high=global.chartlist[_list][6];
			
			var _y=(global.chartlist[_list][1]-global.charttime)*global.chartspeed*2;
			
			gpu_set_depth(100*global.chartlist[_list][2]);
			
		
			if(array_get_index(global.choose, _list)==-1){
				if global.chartlist[_list][7]>0.5{
				draw_set_color(#770000);
				}
				else draw_set_color(#444444);
			}
			else draw_set_color(#009900);
			
			for(var _stuck=global.chartlist[_list][4];_stuck<global.chartlist[_list][3];_stuck++){
			draw_circle(1166-_y,550-(50*_size)-(37.5*(_high+_stuck*2*global.chartlist[_list][5])),50*_size,0);
			}


			if _size>0{
		
				if (global.chartlist[_list][0]=="D") draw_set_color(#ffffff);
				else if (global.chartlist[_list][0]=="X") draw_set_color(#ffff00);
				else if (global.chartlist[_list][0]=="S") draw_set_color(#00ffff);
			}
			else {
				if (global.chartlist[_list][0]=="D") draw_set_color(#999999);
				else if (global.chartlist[_list][0]=="X") draw_set_color(#999900);
				else if (global.chartlist[_list][0]=="S") draw_set_color(#009999);
		
			}
			for(var _stuck=global.chartlist[_list][4];_stuck<global.chartlist[_list][3];_stuck++){
			draw_circle(1166-_y,550-(50*_size)-(37.5*(_high+_stuck*2*global.chartlist[_list][5])),40*_size,0);
			}
		}
		_list--;
	}

}
//fake3d
if global.view==5{
	while(_list>=0&&global.chartlist[_list][1]>=global.charttime){

			if global.chartlist[_list][5]==1 _size=0.75;
			else _size=global.chartlist[_list][5];
			
			var _high=global.chartlist[_list][6];
			var _z=(global.chartlist[_list][1]-global.charttime)*global.chartspeed;
			if _z<600{
				var _x=global.chartlist[_list][2];
				var _y=0;
				var _show=[];

				gpu_set_depth(global.chartlist[_list][1]-global.charttime);
			
		
				if(array_get_index(global.choose, _list)==-1){
					if global.chartlist[_list][7]>0.5{
					draw_set_color(#ee0000);
					}
					else draw_set_color(#777777);
				}
				else draw_set_color(#00cc00);
			
				for(var _stuck=global.chartlist[_list][4];_stuck<global.chartlist[_list][3];_stuck++){
					_y=-_size-0.75*(_high+_stuck*2*global.chartlist[_list][5]);
						_show=scr_threedeeshow((_x-2)*160,_y*80+380+highsdz,_z*3-20);
					
						draw_circle(_show[0]+384,_show[1]+150,8000*_size/(80+_z*3),0);
				}


				if _size>0{
		
					if (global.chartlist[_list][0]=="D") draw_set_color(#ffffff);
					else if (global.chartlist[_list][0]=="X") draw_set_color(#ffff00);
					else if (global.chartlist[_list][0]=="S") draw_set_color(#00ffff);
				}
				else {
					if (global.chartlist[_list][0]=="D") draw_set_color(#999999);
					else if (global.chartlist[_list][0]=="X") draw_set_color(#999900);
					else if (global.chartlist[_list][0]=="S") draw_set_color(#009999);
		
				}
				for(var _stuck=global.chartlist[_list][4];_stuck<global.chartlist[_list][3];_stuck++){
					_y=-_size-0.75*(_high+_stuck*2*global.chartlist[_list][5]);
						_show=scr_threedeeshow((_x-2)*160,_y*80+380+highsdz,_z*3-20);

						draw_circle(_show[0]+384,_show[1]+150,6400*_size/(80+_z*3),0);

				}
			}
			_list--;
		}
		if (showsdz==1){
			gpu_set_depth(-8266);
			draw_set_color(#777777);
			draw_circle(200*sdzx+184,550,75,0);
			draw_set_color(#66dd33);
			draw_circle(200*sdzx+184,550,60,0);
		}
		
	}
var _color=0;
if global.view>=0&&global.view<=2{
	
if array_length(global.chartlist)>0{
	while(_list>=0&&global.chartlist[_list][1]>=global.charttime){
		
		if global.view==2{
			draw_set_alpha(0.4);
						
			if global.chartlist[_list][5]==1 _size=0.75;
			else _size=global.chartlist[_list][5];
			if _size>0{
		
				if (global.chartlist[_list][0]=="D") draw_set_color(#ffffff);
				else if (global.chartlist[_list][0]=="X") draw_set_color(#ffff00);
				else if (global.chartlist[_list][0]=="S") draw_set_color(#00ffff);
			}
			else {
				if (global.chartlist[_list][0]=="D") draw_set_color(#999999);
				else if (global.chartlist[_list][0]=="X") draw_set_color(#999900);
				else if (global.chartlist[_list][0]=="S") draw_set_color(#009999);
		
			}
			for(var i=global.chartlist[_list][3];i>global.chartlist[_list][4];i--){

				draw_circle(400+movex+100*global.chartlist[_list][2],
					(global.charttime-global.chartlist[_list][1])*global.chartspeed+600,
					50*_size,0);

				
			}
		}
		else{
			
			if (   global.showhigh[0]<=global.chartlist[_list][6]+global.chartlist[_list][3]*2*+global.chartlist[_list][5]
				&& global.showhigh[1]>=global.chartlist[_list][6]+global.chartlist[_list][4]*2*+global.chartlist[_list][5] )
				{
			if global.view==0{
			if global.chartlist[_list][5]==1 _size=0.75;
			else if global.chartlist[_list][5]>2 _size=2;
			else if global.chartlist[_list][5]<-2 _size=-2;
			else _size=global.chartlist[_list][5];
			}
			else {
				if global.chartlist[_list][5]>0 _size=0.4;
				else _size=-0.4;
			}
			
			var _x=400+100*global.chartlist[_list][2],
				_y=(global.charttime-global.chartlist[_list][1])*global.chartspeed+600;
			
			gpu_set_depth(100*((-global.chartlist[_list][6])-((global.chartlist[_list][3])*2*global.chartlist[_list][5])));
			
		
			
			
			if (_color==0&&mouse_x<_x+30+movex&&mouse_x>_x-30+movex&&mouse_y<_y+30&&mouse_y>_y-30) {
				draw_set_color(#00cc00);
				_color=1;
			}
			else if(array_get_index(global.choose, _list)==-1){
				if global.chartlist[_list][7]>0.5{
				draw_set_color(#770000);
				}
				else draw_set_color(#444444);
			}
			else draw_set_color(#009900);
			
			if global.view==0{
				if abs(global.chartlist[_list][5])>2{
					draw_rectangle(_x-90+movex,_y-90,_x+90+movex,_y+90,0);
				}
				else draw_circle(_x+movex,_y,50*global.chartlist[_list][5],0);
			}
			else draw_circle(_x+movex,_y,50*0.4,0);
			
			if _size>0{
		
				if (global.chartlist[_list][0]=="D") draw_set_color(#ffffff);
				else if (global.chartlist[_list][0]=="X") draw_set_color(#ffff00);
				else if (global.chartlist[_list][0]=="S") draw_set_color(#00ffff);
			}
			else {
				if (global.chartlist[_list][0]=="D") draw_set_color(#999999);
				else if (global.chartlist[_list][0]=="X") draw_set_color(#999900);
				else if (global.chartlist[_list][0]=="S") draw_set_color(#009999);
		
			}
			if (_size>-0.05&&_size<0.1) _size=0.1;
			draw_circle(_x+movex,_y,40*_size,0);
			
			
			
			var _text="";
			if (global.chartlist[_list][3]!=1||global.chartlist[_list][4]!=0){
				_text=string(global.chartlist[_list][4]+1)+"~"+string(global.chartlist[_list][3])
			}
			if (global.chartlist[_list][5]!=1){
				_text=_text+"\n*"+string(global.chartlist[_list][5]);
			}
			if (global.chartlist[_list][6]!=0){
				_text=_text+"\n↑"+string(global.chartlist[_list][6]);
			}
			draw_set_color(c_gray);
			draw_text_transformed(_x+1+movex,_y+1,_text,0.7,0.7,0);
			draw_set_color(#ff55ff);
			draw_text_transformed(_x+movex,_y,_text,0.7,0.7,0);
				}
		}
		_list--;
	}
}

}


if (square_y!=-1){
	draw_set_alpha(0.4);
	gpu_set_depth(-9999);
	draw_set_color(#00cc00);
	draw_rectangle(mouse_x,mouse_y,400+movex+100*square_x,(global.charttime-square_y)*global.chartspeed+600,0);
}

gpu_set_depth(0);
draw_set_alpha(1);

if global.view==-1{
	for(var i=0;i<array_length(global.bpmlist);i++){
	if (global.charttime<=global.bpmlist[i][0]&&global.bpmlist[i][0]<=_endtime){
		
		var _y=(global.charttime-global.bpmlist[i][0])*global.chartspeed+600;
		if (_color==0&&mouse_x<700&&mouse_x>500&&mouse_y<_y+30&&mouse_y>_y-30) {
				draw_set_color(#00cc00);
				_color=1;
			}
			else if(global.bpmchoose!=i){
				draw_set_color(#444444);
			}
			else draw_set_color(#009900);
		
		draw_circle(600,_y,35,0);
		
		draw_set_color(#ff0000);
		draw_circle(600,_y,25,0);
		
		draw_set_color(#ffffff);
		
	
		draw_text(600,_y,"BPM");
		}
	}
}
if global.view==-2{
	for(var i=0;i<array_length(global.hidden);i++){
	if (global.charttime<=global.hidden[i]&&global.hidden[i]<=_endtime){
		
		var _y=(global.charttime-global.hidden[i])*global.chartspeed+600;
		if (_color==0&&mouse_x<700&&mouse_x>500&&mouse_y<_y+30&&mouse_y>_y-30) {
				draw_set_color(#00cc00);
				_color=1;
			}
			else if(global.bkgchoose!=i){
				draw_set_color(#444444);
			}
			else draw_set_color(#009900);
		
		draw_circle(600,_y,35,0);
		
		draw_set_color(#0066ff);
		draw_circle(600,_y,25,0);
		
		draw_set_color(#ffffff);
		
	
		draw_text(600,_y,"BKG");
		}
	}
}

draw_set_halign(fa_left);


if global.view<3{
	for(var i=0;i<array_length(global.bpmlist);i++){
		if (global.charttime<=global.bpmlist[i][0]&&global.bpmlist[i][0]<=_endtime){
		
		draw_set_color(#ff4400);
		gpu_set_depth(-9999);
		
		var _y=(global.charttime-global.bpmlist[i][0])*global.chartspeed+600;
	
		draw_text(760+movex,_y,"BPM:"+string(global.bpmlist[i][1]));
	

		gpu_set_depth(8000);
		if global.barline>0
		draw_line_width(446+movex,_y,754+movex,_y,6);
		}
	
	
	}
}



gpu_set_depth(_depth);
gpu_set_zwriteenable(_zwrite);
gpu_set_ztestenable(_ztest);
	
	
	