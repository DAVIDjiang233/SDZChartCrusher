
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
			if type==3||type==4{
				if string_digits(_num)==_num
				for(var i=array_length(global.choose)-1;i>=0;i--){
						global.chartlist[global.choose[i]][type]=
						real(_num);
					}
				else if array_length(string_split(_num, "-"))==2
				{	
					_num=(string_split(_num, "-")[1]);
					if string_digits(_num)==_num
					for(var i=array_length(global.choose)-1;i>=0;i--){
						global.chartlist[global.choose[i]][type]=
						-real(_num);
					}
				}
			}
			else{
			if array_length(string_split(_num, "=*-"))==2
			{
				_num=(string_split(_num, "=*-")[1]);
				
				if ( _num!="" && string_digits(_num)==_num
					|| ( string_count( ".", _num)==1 &&
					string_digits(string_split(_num, ".")[1])==string_split(_num, ".")[1] &&
					string_digits(string_split(_num, ".")[0])==string_split(_num, ".")[0])&&
					string_split(_num, ".")[1]!=""
					)
				if type==1{
					var _stime=global.chartlist[global.choose[0]][1];
					for(var i=array_length(global.choose)-1;i>=0;i--){
						global.chartlist[global.choose[i]][1]=
						(global.chartlist[global.choose[i]][1]-_stime)*-real(_num)+_stime;
					}
				}
				else if type==2{
					for(var i=array_length(global.choose)-1;i>=0;i--){
						global.chartlist[global.choose[i]][2]=
						(global.chartlist[global.choose[i]][2]-2)*-real(_num)+2;
					}
				}
				else {
					for(var i=array_length(global.choose)-1;i>=0;i--){
						global.chartlist[global.choose[i]][type]*=
						-real(_num);
					}
				}
			}
			else if (array_length(string_split(_num, "=/-"))==2)
			{
				_num=(string_split(_num, "=/-")[1]);
				
				if ( _num!="" && string_digits(_num)==_num
					|| ( string_count( ".", _num)==1 &&
					string_digits(string_split(_num, ".")[1])==string_split(_num, ".")[1] &&
					string_digits(string_split(_num, ".")[0])==string_split(_num, ".")[0])&&
					string_split(_num, ".")[1]!=""
					)
					
				if type==1{
					var _stime=global.chartlist[global.choose[0]][1];
					for(var i=array_length(global.choose)-1;i>=0;i--){
						global.chartlist[global.choose[i]][1]=
						(global.chartlist[global.choose[i]][1]-_stime)/-real(_num)+_stime;
					}
				}
				else if type==2{
					for(var i=array_length(global.choose)-1;i>=0;i--){
						global.chartlist[global.choose[i]][2]=
						(global.chartlist[global.choose[i]][2]-2)/-real(_num)+2;
					}
				}
				else{
					for(var i=array_length(global.choose)-1;i>=0;i--){
						global.chartlist[global.choose[i]][type]/=
						-real(_num);
					}
				}
			}
			else if array_length(string_split(_num, "=*"))==2
			{
				_num=(string_split(_num, "=*")[1]);
				
				if ( _num!="" && string_digits(_num)==_num
					|| ( string_count( ".", _num)==1 &&
					string_digits(string_split(_num, ".")[1])==string_split(_num, ".")[1] &&
					string_digits(string_split(_num, ".")[0])==string_split(_num, ".")[0])&&
					string_split(_num, ".")[1]!=""
					)
				if type==1{
					var _stime=global.chartlist[global.choose[0]][1];
					for(var i=array_length(global.choose)-1;i>=0;i--){
						global.chartlist[global.choose[i]][1]=
						(global.chartlist[global.choose[i]][1]-_stime)*real(_num)+_stime;
					}
				}
				else if type==2{
					for(var i=array_length(global.choose)-1;i>=0;i--){
						global.chartlist[global.choose[i]][2]=
						(global.chartlist[global.choose[i]][2]-2)*real(_num)+2;
					}
				}
				else {
					for(var i=array_length(global.choose)-1;i>=0;i--){
						global.chartlist[global.choose[i]][type]*=
						real(_num);
					}
				}
			}
			else if array_length(string_split(_num, "=/"))==2
			{
				_num=(string_split(_num, "=/")[1]);
				
				if ( _num!="" && string_digits(_num)==_num
					|| ( string_count( ".", _num)==1 &&
					string_digits(string_split(_num, ".")[1])==string_split(_num, ".")[1] &&
					string_digits(string_split(_num, ".")[0])==string_split(_num, ".")[0])&&
					string_split(_num, ".")[1]!=""
					)
					
				if type==1{
					var _stime=global.chartlist[global.choose[0]][1];
					for(var i=array_length(global.choose)-1;i>=0;i--){
						global.chartlist[global.choose[i]][1]=
						(global.chartlist[global.choose[i]][1]-_stime)/real(_num)+_stime;
					}
				}
				else if type==2{
					for(var i=array_length(global.choose)-1;i>=0;i--){
						global.chartlist[global.choose[i]][2]=
						(global.chartlist[global.choose[i]][2]-2)/real(_num)+2;
					}
				}
				else{
					for(var i=array_length(global.choose)-1;i>=0;i--){
						global.chartlist[global.choose[i]][type]/=
						real(_num);
					}
				}
			}
			else if array_length(string_split(_num, "=+"))==2
			{
				_num=(string_split(_num, "=+")[1]);
				
				if ( _num!="" && string_digits(_num)==_num
					|| ( string_count( ".", _num)==1 &&
					string_digits(string_split(_num, ".")[1])==string_split(_num, ".")[1] &&
					string_digits(string_split(_num, ".")[0])==string_split(_num, ".")[0])&&
					string_split(_num, ".")[1]!=""
					)
					
				for(var i=array_length(global.choose)-1;i>=0;i--){
					global.chartlist[global.choose[i]][type]+=
					real(_num);
				}
			}
			else if array_length(string_split(_num, "=-"))==2
			{	
				_num=(string_split(_num, "=-")[1]);
				
				if ( _num!="" && string_digits(_num)==_num
					|| ( string_count( ".", _num)==1 &&
					string_digits(string_split(_num, ".")[1])==string_split(_num, ".")[1] &&
					string_digits(string_split(_num, ".")[0])==string_split(_num, ".")[0])&&
					string_split(_num, ".")[1]!=""
					)
					
				for(var i=array_length(global.choose)-1;i>=0;i--){
					global.chartlist[global.choose[i]][type]-=
					real(_num);
				}
			}
			else if array_length(string_split(_num, "-"))==2
			{	
				_num=(string_split(_num, "-")[1]);
				
				if ( _num!="" &&  string_digits(_num)==_num
					|| ( string_count( ".", _num)==1 &&
					string_digits(string_split(_num, ".")[1])==string_split(_num, ".")[1] &&
					string_digits(string_split(_num, ".")[0])==string_split(_num, ".")[0])&&
					string_split(_num, ".")[1]!=""
					)
					
				for(var i=array_length(global.choose)-1;i>=0;i--){
					global.chartlist[global.choose[i]][type]=
					-real(_num);
				}
			}
			else{
				if ( string_digits(_num)==_num
					|| ( string_count( ".", _num)==1 &&
					string_digits(string_split(_num, ".")[1])==string_split(_num, ".")[1] &&
					string_digits(string_split(_num, ".")[0])==string_split(_num, ".")[0])&&
					string_split(_num, ".")[1]!=""
					)
					
				for(var i=array_length(global.choose)-1;i>=0;i--){
					global.chartlist[global.choose[i]][type]=
					real(_num);
				}
			}
			if type=1{
				global.choose=[];
				array_sort(global.chartlist,function(elm1, elm2){
					return real(elm1[1])-real(elm2[1]);
				});

				global.list=0;
				scr_listchange(1);
				}
			}
            
        }
    }
}
