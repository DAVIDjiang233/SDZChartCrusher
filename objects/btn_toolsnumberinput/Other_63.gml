
var i_d = ds_map_find_value(async_load, "id");
if (i_d == msg)
{
    if (ds_map_find_value(async_load, "status"))
    {
        if (ds_map_find_value(async_load, "result") != "")
        {
			scr_cancellist();
			array_sort(global.choose,function(elm1, elm2){
				return real(elm1)-real(elm2);
			});
			
			var _num=ds_map_find_value(async_load, "result");
			
				if array_length(string_split(_num, "-"))==2
			{	
				_num=(string_split(_num, "-")[1]);
				
				if ( _num!="" &&  string_digits(_num)==_num
					|| ( string_count( ".", _num)==1 &&
					string_digits(string_split(_num, ".")[1])==string_split(_num, ".")[1] &&
					string_digits(string_split(_num, ".")[0])==string_split(_num, ".")[0])&&
					string_split(_num, ".")[1]!=""
					)
					
				btn_tools.tools[global.tools-1][type]= -real(_num);
			}
			else{
				if ( string_digits(_num)==_num
					|| ( string_count( ".", _num)==1 &&
					string_digits(string_split(_num, ".")[1])==string_split(_num, ".")[1] &&
					string_digits(string_split(_num, ".")[0])==string_split(_num, ".")[0])&&
					string_split(_num, ".")[1]!=""
					)
					
				btn_tools.tools[global.tools-1][type]= real(_num);
			}
            
        }
    }
}
