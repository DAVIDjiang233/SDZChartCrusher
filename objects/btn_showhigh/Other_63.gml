
var i_d = ds_map_find_value(async_load, "id");
if (i_d == msg)
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
					
				global.showhigh[type]=real(_num);
            
        }
    }
}
