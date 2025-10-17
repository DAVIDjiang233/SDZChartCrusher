if global.pause==1 exit;if global.pauseall==1 exit;
if !keyboard_check(vk_control) exit;
if global.view<0||global.view>2 exit;

global.choose=[];
for(var i=0;i<array_length(global.chartlist);i++){
	global.choose[i]=i;
}