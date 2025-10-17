
var i_d = ds_map_find_value(async_load, "id");
if (i_d == msg4)
{
    if (ds_map_find_value(async_load, "status"))
    {
        if (ds_map_find_value(async_load, "result") != "")
        {
			var _num=ds_map_find_value(async_load, "result");

				if ( string_digits(_num)==_num
					|| ( string_count( ".", _num)==1 &&
					string_digits(string_split(_num, ".")[1])==string_split(_num, ".")[1] &&
					string_digits(string_split(_num, ".")[0])==string_split(_num, ".")[0])&&
					string_split(_num, ".")[1]!=""
					)
				global.bpmlist[global.bpmchoose][type]=real(_num);
				global.barlist=scr_barline(global.bpmlist, global.charttime, global.charttime+600/global.chartspeed);
        }
    }
}
