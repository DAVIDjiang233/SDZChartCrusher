    var _file,_player;

    _file=get_open_filename("SDZ chart file|*.sdz", "");
	
	var i=0;
    if (_file != "")
    {
        _file = file_text_open_read(_file);
		var _chart;
		while (!file_text_eof(_file))
		{
			_chart[i] = string_split(file_text_read_string(_file),",");
			while (_chart[i][0]==""&&!file_text_eof(_file)){
				array_delete(_chart,i,1);
				file_text_readln(_file);
				_chart[i] = string_split(file_text_read_string(_file),",");
			}
			if (_chart[i][0]=="") array_delete(_chart,i,1);
		    file_text_readln(_file);
			i++;
		}
		//show_debug_message(_chart);
		global.choose=[];
		global.cancel=[];
		global.chartlist=[];
		global.bpmlist=[];
		global.hidden=[];
		global.camera=[];
		i=0;
		var _starttime=0;
		var _bpm=120;
		
		while(i<array_length(_chart)){
		
			var _line = string_trim(_chart[i][0]);
			_line = string_lower(_line);
			
			if (string_pos("bpm", _line) > 0) {
		        var equal_pos = string_pos("=", _line);
		        if (equal_pos > 0) {
		            var bpm_str = string_copy(_line, equal_pos + 1, string_length(_line) - equal_pos);
		            global.bpmlist = [[0,real(bpm_str)]]; // 转换为数值
					_bpm=real(bpm_str);
		        }
		    }
			else if (string_pos("bg_offset", _line) > 0) {
		    }
			else if (string_pos("offset", _line) > 0) {
		        var equal_pos = string_pos("=", _line);
		        if (equal_pos > 0) {
		            var offset_str = string_copy(_line, equal_pos + 1, string_length(_line) - equal_pos);
		            RoomCtrl.offset = real(offset_str); // 转换为数值
					/*show_debug_message(offset_str);
					show_debug_message(RoomCtrl.offset);*/
		        }
		    }
			else if (string_pos("[data]", _line) > 0) {
				break;
			}
			i++;
		}
		
		while(i<array_length(_chart)){
			
			if _chart[i][0]=="B"{
				
				if _chart[i][1]=="" _chart[i][1]=0;
				if _chart[i][2]=="" _chart[i][2]=0;
				if _chart[i][3]=="" _chart[i][3]=0;
				
				if real(_chart[i][3])==0 {var q=0;}
				else {var q=real(_chart[i][2])/real(_chart[i][3]);}
				_starttime+=(real(_chart[i][1])+q)*60000/_bpm;
				global.bpmlist[array_length(global.bpmlist)]
				=[_starttime,real(_chart[i][4])];
				_bpm=real(_chart[i][4]);
				
			}
			if _chart[i][0]=="H"{
				
				if _chart[i][1]=="" _chart[i][1]=0;
				if _chart[i][2]=="" _chart[i][2]=0;
				if _chart[i][3]=="" _chart[i][3]=0;
				
				if real(_chart[i][3])==0 {var q=0;}
				else {var q=real(_chart[i][2])/real(_chart[i][3]);}
				
				global.hidden[array_length(global.hidden)]
				=_starttime+(real(_chart[i][1])+q)*60000/_bpm;
				
			}
			
			if (_chart[i][0]=="D"||_chart[i][0]=="S"||_chart[i][0]=="X"){
				
				if _chart[i][1]=="" _chart[i][1]=0;
				if _chart[i][2]=="" _chart[i][2]=0;
				if _chart[i][3]=="" _chart[i][3]=0;
				
				
				if real(_chart[i][3])==0 {var q=0;}
				else {var q=real(_chart[i][2])/real(_chart[i][3]);}
				
				global.chartlist[array_length(global.chartlist)]
				=[_chart[i][0],(real(_chart[i][1])+q)*60000/_bpm+_starttime,2,1,0,1,0,0];
				var j=4;
				while(j<array_length(_chart[i])){
					if (_chart[i][j]!="")
					global.chartlist[array_length(global.chartlist)-1][j-2]=real(_chart[i][j]);
					j++;
				}
				
				
			}
			if (_chart[i][0]=="C"){
				
				if _chart[i][1]=="" _chart[i][1]=0;
				if _chart[i][2]=="" _chart[i][2]=0;
				if _chart[i][3]=="" _chart[i][3]=0;
				if _chart[i][4]=="" _chart[i][4]=1;
				if _chart[i][5]=="" _chart[i][5]=0;
				if _chart[i][6]=="" _chart[i][6]=0;
				if _chart[i][7]=="" _chart[i][7]=0;
				
				
				if real(_chart[i][3])==0 {var q=0;}
				else {var q=real(_chart[i][2])/real(_chart[i][3]);}
				if real(_chart[i][7])==0 {var w=0;}
				else {var w=real(_chart[i][6])/real(_chart[i][6]);}
				
				global.camera[array_length(global.camera)]
				=[(real(_chart[i][1])+q)*60000/_bpm+_starttime,real(_chart[i][4]),
					(real(_chart[i][5])+w)*60000/_bpm,0,0,0,0,0,0];
				var j=8;
				while(j<array_length(_chart[i])){
					if (_chart[i][j]!="")
					global.camera[array_length(global.camera)-1][j-5]=real(_chart[i][j]);
					j++;
				}
				
				
			}
			
			i++;
			
		}
		
		array_sort(global.chartlist,function(elm1, elm2){
			return real(elm1[1])-real(elm2[1]);
		});
		global.charttime=0;
		global.list=0;
		scr_listchange(1);
		global.barlist=scr_barline(global.bpmlist, global.charttime, global.charttime+600/global.chartspeed);

    }
	
	
	//show_debug_message(global.camera);
	
	

	
   