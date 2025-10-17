if global.pause==1 exit;if global.pauseall==1 exit;
if global.view<0||global.view>2 exit;
if array_length(global.cancel)==0 exit;
if !keyboard_check(vk_control) exit;
global.chartlist=[];

array_copy(global.chartlist, 0,global.cancel[array_length(global.cancel)-1], 0, array_length(global.cancel[array_length(global.cancel)-1]));

array_pop(global.cancel);
global.list=0;
scr_listchange(1);