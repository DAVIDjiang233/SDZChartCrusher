if global.bpmchoose==-1 exit;
if global.view!=-1 exit;

if type==0&&global.bpmchoose==0 exit;

msg4 = get_integer_async("输入数值", "");