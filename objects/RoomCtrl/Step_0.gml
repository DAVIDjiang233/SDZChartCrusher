var _endtime=global.charttime+600/global.chartspeed;

var _size;
var _list=global.list;



if chartplay==1{
	global.charttime=(current_time-starttime)*global.musicspeed;
	scr_listchange(1);
	global.barlist=scr_barline(global.bpmlist, global.charttime, global.charttime+600/global.chartspeed);

}
else if(lastmin<current_time/60000) {
	lastmin++;
	with btn_savechart event_user(0);
	//show_debug_message("autosave");
	//show_debug_message(lastmin);
}

if global.view==5{
	
	var _bpm=global.bpmlist[0][1]
	for(var i=0;i<array_length(global.bpmlist);i++){
		if global.bpmlist[i][0]<=global.charttime
			_bpm=global.bpmlist[i][1];
		else break;
	}
	var _dt = delta_time / 1000000;
	var _t=60/(_bpm*global.musicspeed);
	var _s = 4 / _t;        // 初速度
	var _a = 1 / (60 * _t * _t);

	if (keyboard_check_pressed(vk_up)&&highsdz<60){higha+=_s;}
	if (keyboard_check_pressed(vk_space)&&highsdz<60&&RoomCtrl.showsdz==1&&!keyboard_check(vk_shift)){higha+=_s;}
	if (keyboard_check_pressed(ord("W"))&&highsdz<60){higha+=_s;}
	if (keyboard_check_pressed(ord("I"))&&highsdz<60){higha+=_s;}
	
	if keyboard_check_pressed(vk_down){highsdz=0;higha=0;}
	if keyboard_check_pressed(ord("S")){highsdz=0;higha=0;}
	if keyboard_check_pressed(ord("K")){highsdz=0;higha=0;}
	
	if (keyboard_check_pressed(vk_left)&&sdzx>0){sdzx-=1;}
	if (keyboard_check_pressed(ord("A"))&&sdzx>0){sdzx-=1;}
	if (keyboard_check_pressed(ord("J"))&&sdzx>0){sdzx-=1;}

	if (keyboard_check_pressed(vk_right)&&sdzx<2){sdzx+=1;}
	if (keyboard_check_pressed(ord("D"))&&sdzx<2){sdzx+=1;}
	if (keyboard_check_pressed(ord("L"))&&sdzx<2){sdzx+=1;}
	higha-=_a*_dt*240;
	highsdz+=higha*_dt*240;
	if highsdz<0 {
		highsdz=0;
		higha=0;
	}
}
else {highsdz=0;
	higha=0;
	}
if global.view>=0&&global.view<=2{
	if (keyboard_check(vk_left)){movex+=1;}
	if (keyboard_check(vk_right)){movex-=1;}
	if !keyboard_check(vk_control){
		if (keyboard_check(vk_left)){movex+=4;}
	if (keyboard_check(vk_right)){movex-=4;}
	}
}
else movex=0;

if global.pause==1 exit;
if global.pauseall==1 exit;

//high=480



if mouse_check_button_pressed(mb_right){
	if global.view>=0&&global.view<=2{
		global.choose=[];
		if array_length(global.chartlist)>0{
			while(_list>=0&&global.chartlist[_list][1]>=global.charttime){

				var _x=400+100*global.chartlist[_list][2],
					_y=(global.charttime-global.chartlist[_list][1])*global.chartspeed+600;
		
				if (mouse_x<_x+30+movex&&mouse_x>_x-30+movex&&mouse_y<_y+30&&mouse_y>_y-30){
					if (   global.showhigh[0]<=global.chartlist[_list][6]+global.chartlist[_list][3]*2*+global.chartlist[_list][5]
					&& global.showhigh[1]>=global.chartlist[_list][6]+global.chartlist[_list][4]*2*+global.chartlist[_list][5] ){
						scr_cancellist();
						array_delete(global.chartlist,_list,1);
						global.list--;
						break;
					}
				}
				_list--;
			}
		}
	}
	else if global.view==-1{
		if (mouse_x<700&&mouse_x>500){
			global.bpmchoose=-1;
			for(var i=1;i<array_length(global.bpmlist);i++){
				if (global.charttime<=global.bpmlist[i][0]&&global.bpmlist[i][0]<=_endtime){

					var _y=(global.charttime-global.bpmlist[i][0])*global.chartspeed+600;
					
					if (mouse_y<_y+30&&mouse_y>_y-30){
						array_delete(global.bpmlist,i,1)
						global.barlist=scr_barline(global.bpmlist, global.charttime, global.charttime+600/global.chartspeed);
						break;
					}
				}
			}
		}
	}
	else if global.view==-2{
		if (mouse_x<700&&mouse_x>500){
			global.bkgchoose=-1;
			for(var i=0;i<array_length(global.hidden);i++){
				if (global.charttime<=global.hidden[i]&&global.hidden[i]<=_endtime){

					var _y=(global.charttime-global.hidden[i])*global.chartspeed+600;
					
					if (mouse_y<_y+30&&mouse_y>_y-30){
						array_delete(global.hidden,i,1);
					}
				}
			}
		}
	}
}

if mouse_check_button_pressed(mb_left){
	if global.view>=0&&global.view<=2{
		if keyboard_check(vk_control){
			while(_list>=0&&global.chartlist[_list][1]>=global.charttime){

				var _x=400+100*global.chartlist[_list][2],
					_y=(global.charttime-global.chartlist[_list][1])*global.chartspeed+600;
		
				if (mouse_x<_x+30+movex&&mouse_x>_x-30+movex&&mouse_y<_y+30&&mouse_y>_y-30){
					if (   global.showhigh[0]<=global.chartlist[_list][6]+global.chartlist[_list][3]*2*+global.chartlist[_list][5]
					&& global.showhigh[1]>=global.chartlist[_list][6]+global.chartlist[_list][4]*2*+global.chartlist[_list][5] ){
						if array_get_index(global.choose, _list)==-1{
							array_push(global.choose,_list);
							array_sort(global.choose,function(elm1, elm2){
								return real(elm1)-real(elm2);
							});
						}
						else array_delete(global.choose,array_get_index(global.choose, _list),1);
					break;
					}
				}
				_list--;
			}
	
		}
		else if (keyboard_check(vk_shift)&&square_y==-1){
			square_x=(mouse_x-400-movex)/100;
			square_y=global.charttime-(mouse_y-600)/global.chartspeed;
		}
		else if(square_y!=-1){
			var _x1=(mouse_x-400-movex)/100,
				_y1=global.charttime-(mouse_y-600)/global.chartspeed,
				_x2,_y2;
		
			if square_x<_x1{
				_x2=_x1;
				_x1=square_x;
			}
			else _x2=square_x;
			if square_y<_y1{
				_y2=_y1;
				_y1=square_y;
			}
			else _y2=square_y;
		
			for(var i=0;i<array_length(global.chartlist);i++){
				var _x=global.chartlist[i][2],
					_y=global.chartlist[i][1];
		
				if (_x1<_x&&_x2>_x&&_y1<_y&&_y2>_y){
					if (   global.showhigh[0]<=global.chartlist[i][6]+global.chartlist[i][3]*2*+global.chartlist[i][5]
					&& global.showhigh[1]>=global.chartlist[i][6]+global.chartlist[i][4]*2*+global.chartlist[i][5] ){
						if array_get_index(global.choose, i)==-1{
							array_push(global.choose,i);
						}
					}
				}
			}
			array_sort(global.choose,function(elm1, elm2){
				return real(elm1)-real(elm2);
			});
			square_y=-1;
		}
		else if(mouse_x<800) {
			global.choose=[];
		}
	}
	
	else if global.view==-1{
		if (mouse_x<700&&mouse_x>500){
			global.bpmchoose=-1;
			for(var i=0;i<array_length(global.bpmlist);i++){
				if (global.charttime<=global.bpmlist[i][0]&&global.bpmlist[i][0]<=_endtime){

					var _y=(global.charttime-global.bpmlist[i][0])*global.chartspeed+600;
					
					if (mouse_y<_y+30&&mouse_y>_y-30){
						global.bpmchoose=i;
						//show_debug_message(global.bpmchoose);
						break;
					}
				}
			}
		}
	}
	else if global.view==-2{
		if (mouse_x<700&&mouse_x>500){
			global.bkgchoose=-1;
			for(var i=0;i<array_length(global.hidden);i++){
				if (global.charttime<=global.hidden[i]&&global.hidden[i]<=_endtime){

					var _y=(global.charttime-global.hidden[i])*global.chartspeed+600;
					
					if (mouse_y<_y+30&&mouse_y>_y-30){
						global.bkgchoose=i;
						//show_debug_message(global.bkgchoose);
						break;
					}
				}
			}
		}
	}
}

