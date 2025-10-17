
var i_d = ds_map_find_value(async_load, "id");
if (i_d == msg3)
{
    if (ds_map_find_value(async_load, "status"))
    {
        if (ds_map_find_value(async_load, "result") != "")
        {
			scr_cancellist();
			var _num=real(ds_map_find_value(async_load, "result"))*1000;
			global.musictime=_num;
			
			if(global.charttime>global.musictime){
			global.charttime=0;
			global.list=0;
			scr_listchange(1);
			}
            
        }
    }
}
