if array_length(global.choose)==0 exit;
if global.view>=0&&global.view<=2
msg = get_integer_async("可以输入: 数值 =+ =- =* =/", "");