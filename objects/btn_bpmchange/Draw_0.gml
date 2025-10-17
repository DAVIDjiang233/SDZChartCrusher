if global.bpmchoose==-1 exit;
if global.view!=-1 exit;

if type==0&&global.bpmchoose==0 exit;

draw_self();

draw_set_font(global.fontall);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(#ffffff);


draw_text(x,y,title+":"+string(global.bpmlist[global.bpmchoose][type]));