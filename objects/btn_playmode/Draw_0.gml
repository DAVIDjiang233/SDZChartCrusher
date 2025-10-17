if global.view!=5 exit;
draw_self();

draw_set_font(global.fontall);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(#ffffff);


if RoomCtrl.showsdz==0{
	draw_text(x,y,"演示模式");
}
else if RoomCtrl.showsdz==1{
	draw_text(x,y,"游玩模式");
}
else if RoomCtrl.showsdz==2{
	draw_text(x,y,"奥托普雷");
}