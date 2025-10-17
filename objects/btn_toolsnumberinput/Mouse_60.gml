if mousein==0 exit;
if global.tools==0 exit;

if array_length(btn_tools.tools[global.tools-1])<type exit;
if global.view<0||global.view>2 exit;

if (global.tools==1) {
	if array_length(global.choose)<2 exit;
	if type>1 exit;

}
if (global.tools==2) {
	if array_length(global.choose)<1 exit;
	if type>1 exit;
}

	if keyboard_check(vk_control){
		btn_tools.tools[global.tools-1][type]+=0.1
	}
	else if keyboard_check(vk_shift){
		btn_tools.tools[global.tools-1][type]+=0.5
	}