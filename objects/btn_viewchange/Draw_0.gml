draw_self();

draw_set_font(global.fontall);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(#ffffff);


if global.view==0{
	draw_text(x,y,"默认视图");
}
else if global.view==1{
	draw_text(x,y,"缩小石墩");
}
else if global.view==2{
	draw_text(x,y,"半透明");
}
else if global.view==3{
	draw_text(x,y,"右视图");
}
else if global.view==4{
	draw_text(x,y,"左视图");
}
else if global.view==5{
	draw_text(x,y,"伪3D视图");
}
else if global.view==-1{
	draw_text(x,y,"BPM编辑");
}
else if global.view==-2{
	draw_text(x,y,"BKG编辑");
}