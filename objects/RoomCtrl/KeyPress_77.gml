if global.pause==1 exit;if global.pauseall==1 exit;
if array_length(global.choose)==0 exit;
if global.view<0||global.view>2 exit;
scr_cancellist();
for(var i=array_length(global.choose)-1;i>=0;i--){
	global.chartlist[global.choose[i]][2]=4-global.chartlist[global.choose[i]][2];
}

