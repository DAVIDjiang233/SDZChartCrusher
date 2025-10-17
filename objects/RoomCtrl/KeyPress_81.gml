if global.pause==1 exit;if global.pauseall==1 exit;

if global.view>=0&&global.view<=2{
	global.choose=[];
	if (mouse_y>600) exit;
	if (mouse_x>750||mouse_x<450) exit;
	var _time=global.charttime-(mouse_y-600)/global.chartspeed,
		_x=(mouse_x-400)/100;
	scr_cancellist();
	if global.barline!=0{
		if keyboard_check(vk_shift)
			_x=round(_x*2)/2;
		else _x=round(_x);
		var _timep=scr_barfind(global.barlist,_time);
		if abs(_timep-_time)<50/global.chartspeed _time=_timep;
	}
		if _time<0 exit;
		array_push(global.chartlist, ["D",_time,_x,global.base[0],global.base[1],global.base[2],global.base[3],global.base[4]]);
		array_sort(global.chartlist,function(elm1, elm2){
				return real(elm1[1])-real(elm2[1]);
			});
	global.list++;
}

else if global.view==-1{
	if (mouse_y>600) exit;
	if (mouse_x>750||mouse_x<450) exit;
	var _time=global.charttime-(mouse_y-600)/global.chartspeed;
	scr_cancellist();
	if global.barline!=0{
		var _timep=scr_barfind(global.barlist,_time);
		if abs(_timep-_time)<50/global.chartspeed _time=_timep;
	}
		if _time<=0 exit;
		var _bpm=120;
		for(var i=0;i<array_length(global.bpmlist);i++){


					if (global.bpmlist[i][0]>_time){
						break;
					}
					_bpm=global.bpmlist[i][1];

			}
		
		
		
		array_push(global.bpmlist, [_time,_bpm]);
		array_sort(global.bpmlist,function(elm1, elm2){
				return real(elm1[0])-real(elm2[0]);
			});
		global.barlist=scr_barline(global.bpmlist, global.charttime, global.charttime+600/global.chartspeed);
}
else if global.view==-2{
	if (mouse_y>600) exit;
	if (mouse_x>750||mouse_x<450) exit;
	var _time=global.charttime-(mouse_y-600)/global.chartspeed;
	scr_cancellist();
	if global.barline!=0{
		var _timep=scr_barfind(global.barlist,_time);
		if abs(_timep-_time)<50/global.chartspeed _time=_timep;
	}
		if _time<=0 exit;
		array_push(global.hidden, _time);
		array_sort(global.hidden,function(elm1, elm2){
				return real(elm1)-real(elm2);
			});
}
