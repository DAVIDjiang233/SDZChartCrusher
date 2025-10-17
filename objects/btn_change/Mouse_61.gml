if array_length(global.choose)==0 exit;
if mousein==0 exit;
if global.view>=0&&global.view<=2{
	if keyboard_check(vk_control){
		for(var i=array_length(global.choose)-1;i>=0;i--){
			global.chartlist[global.choose[i]][type]-=amo;
			if(type>=3&&type<=4&&global.chartlist[global.choose[i]][3]==global.chartlist[global.choose[i]][4]){
				global.chartlist[global.choose[i]][type]+=amo;
			}
		}
	}
	else if keyboard_check(vk_shift){
		for(var i=array_length(global.choose)-1;i>=0;i--){
			global.chartlist[global.choose[i]][type]-=5*amo;
			if(type>=3&&type<=4&&global.chartlist[global.choose[i]][3]==global.chartlist[global.choose[i]][4]){
				global.chartlist[global.choose[i]][type]+=5*amo;
			}
		}
	}

}