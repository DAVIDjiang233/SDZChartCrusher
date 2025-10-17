if global.pause==1 exit;if global.pauseall==1 exit;
if array_length(global.choose)==0 exit;
if global.view<0||global.view>2 exit;
scr_cancellist();

array_sort(global.choose,function(elm1, elm2){
	return real(elm1)-real(elm2);
});
		
for(var i=array_length(global.choose)-1;i>=0;i--){
	array_delete(global.chartlist,global.choose[i],1);
}
global.choose=[];
global.list=0;

scr_listchange(1);