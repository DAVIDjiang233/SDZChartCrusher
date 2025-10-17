function scr_cancellist(){
	
	
	var _all=[];
	for (var i=0;i<array_length(global.chartlist);i++){
		_all[i]=[];
	array_copy(_all[i], 0, global.chartlist[i], 0, array_length(global.chartlist[i]));
	}
	array_push(global.cancel,_all);
	
	if array_length(global.cancel)>20 array_delete(global.cancel,0,1);
	
	//show_debug_message(_all);
	/*
var q=[3,4,7,3];

var w=[];
array_copy(w, 0, q, 0, array_length(q));

q[1]=7;

//show_debug_message(w);
*/


}