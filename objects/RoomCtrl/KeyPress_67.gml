if global.pause==1 exit;if global.pauseall==1 exit;
if array_length(global.choose)==0 exit;
if !keyboard_check(vk_control) exit;
if global.view<0||global.view>2 exit;
global.copy=[];


for(var i=0;i<array_length(global.choose);i++){
	global.copy[array_length(global.copy)]=[];
	array_copy(global.copy[array_length(global.copy)-1], 0, global.chartlist[global.choose[i]], 0, 8);
}

//show_debug_message(global.copy);