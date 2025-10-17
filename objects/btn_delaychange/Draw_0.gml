

draw_self();

draw_set_font(global.fontall);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(#ffffff);


draw_text(x,y,"延迟:"+string(RoomCtrl.offset)+"s");