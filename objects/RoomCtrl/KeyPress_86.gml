if global.pause==1 exit;if global.pauseall==1 exit;
if global.view<0||global.view>2 exit;
if array_length(global.copy)==0 exit;

if (mouse_y>600) exit;
if (mouse_x>750&&mouse_x<450) exit;
var _time=global.charttime-(mouse_y-600)/global.chartspeed;
scr_cancellist();

var _timep=scr_barfind(global.barlist,_time);
if abs(_timep-_time)<50/global.chartspeed _time=_timep;

_time=_time-global.copy[0][1];



for(var i=array_length(global.copy)-1;i>=0;i--){
	
	global.chartlist[array_length(global.chartlist)]=[];
	array_copy(global.chartlist[array_length(global.chartlist)-1], 0, global.copy[i], 0, 8);
	global.chartlist[array_length(global.chartlist)-1][1]+=_time;
}


array_sort(global.chartlist,function(elm1, elm2){
		return real(elm1[1])-real(elm2[1]);
	});
	
	scr_listchange(1);
