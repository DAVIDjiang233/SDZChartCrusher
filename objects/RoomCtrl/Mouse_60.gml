if global.pause==1 exit;if global.pauseall==1 exit;
if keyboard_check(vk_shift){
	global.chartspeed+=0.05;
	scr_listchange(-1);
}
else if keyboard_check(vk_control){
	global.barline++;
}
else {
	global.charttime+=50/global.chartspeed;
	scr_listchange(1);
}
if chartplay==1 exit;
global.barlist=scr_barline(global.bpmlist, global.charttime, global.charttime+600/global.chartspeed);


////show_debug_message(global.list);
/*

//show_debug_message(global.charttime);
//show_debug_message(global.chartspeed);

*/
