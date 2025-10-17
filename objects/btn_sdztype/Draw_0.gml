if array_length(global.choose)==0 exit;
if global.view>=0&&global.view<=2{
draw_self();

draw_set_font(global.fontall);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(#ffffff);
if type==0{
	var _vist=0;
	for (var i=1;i<array_length(global.choose);i++){
		if global.chartlist[global.choose[0]][0]!=global.chartlist[global.choose[i]][0]{
		_vist=1;
		break;
		}
	}
	if _vist==0{
		
		if (global.chartlist[global.choose[0]][0]=="D"){
			draw_set_color(#ffffff);
			draw_text(x,y,"类型:普通");
		}
		else if (global.chartlist[global.choose[0]][0]=="X"){
			draw_set_color(#ffff00);
			draw_text(x,y,"类型:绝赞");
		}
		else if (global.chartlist[global.choose[0]][0]=="S"){
			draw_set_color(#00ffff);
			draw_text(x,y,"类型:表演");
		}
	}
	else draw_text(x,y,"石墩类型");
}
else{
	
	var _vist=0;
	for (var i=1;i<array_length(global.choose);i++){
		if global.chartlist[global.choose[0]][7]!=global.chartlist[global.choose[i]][7]{
		_vist=1;
		break;
		}
		
	}
	if (_vist=0){
		if (global.chartlist[global.choose[0]][7]<0.5){
			draw_set_color(#ffff00);
			draw_text(x,y,"保护:否");
		}
		else{
			draw_set_color(#ff7777);
			draw_text(x,y,"保护:是");
		}
	}
	else draw_text(x,y,"保护石墩");
}

}