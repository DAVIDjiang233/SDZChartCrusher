if global.tools==0 exit;

if global.view<0||global.view>2 exit;

if (global.tools==1) {
	if array_length(global.choose)<2 exit;
}
if (global.tools==2) {
	if array_length(global.choose)<1 exit;
}
mousein=0;
global.pause=0;