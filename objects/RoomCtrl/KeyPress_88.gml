if global.pause==1 exit;
if global.view<0||global.view>2 exit;
if global.pauseall==1 exit;
if array_length(global.choose)==0 exit;
if !keyboard_check(vk_control) exit;
global.copy=[];

scr_cancellist();

array_sort(global.choose,function(elm1, elm2){
	return real(elm1)-real(elm2);
});

for(var i=0;i<array_length(global.choose);i++){
	global.copy[array_length(global.copy)]=[];
	array_copy(global.copy[array_length(global.copy)-1], 0, global.chartlist[global.choose[i]], 0, 8);
}

//show_debug_message(global.copy);

for(var i=array_length(global.choose)-1;i>=0;i--){
	array_delete(global.chartlist,global.choose[i],1);
}
global.choose=[];
global.list=0;

scr_listchange(1);




		
