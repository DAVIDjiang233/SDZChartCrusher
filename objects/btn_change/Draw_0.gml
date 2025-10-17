if array_length(global.choose)==0 exit;
if global.view>=0&&global.view<=2{
draw_self();

draw_set_font(global.fontall);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(#ffffff);

var _vist=0;
	for (var i=1;i<array_length(global.choose);i++){
		if global.chartlist[global.choose[0]][type]!=global.chartlist[global.choose[i]][type]{
		_vist=1;
		break;
		}
	}
if _vist==0{
draw_text(x,y,title+":"+string(global.chartlist[global.choose[0]][type]));}
else draw_text(x,y,title);
}