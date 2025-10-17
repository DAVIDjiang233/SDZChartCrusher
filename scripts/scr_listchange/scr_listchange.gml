function scr_listchange(type){
	var _endtime=global.charttime+600/global.chartspeed;
	
	while(global.list>=0&&global.list<array_length(global.chartlist)
	&&global.chartlist[global.list][1]*type<_endtime*type
	){
		global.list+=type;
	}
	
	if (global.list<0) global.list++
	if global.list>=array_length(global.chartlist) global.list--;
}