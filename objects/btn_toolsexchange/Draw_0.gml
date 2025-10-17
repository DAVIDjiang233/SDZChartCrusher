if global.tools==0 exit;

if array_length(btn_tools.tools[global.tools-1])<=type exit;
if global.view<0||global.view>2 exit;

if (global.tools==1) {
if array_length(global.choose)<2 exit;
if type<2 exit;
}
if (global.tools==2) {
if array_length(global.choose)<1 exit;
if type<2 exit;
}

draw_self();

draw_set_font(global.fontall);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(#ffffff);


draw_text(x,y,global.toolext[global.tools-1][type][btn_tools.tools[global.tools-1][type]]);