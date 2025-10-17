	var _chartall=[];
	var _bpm=global.bpmlist[0][1];
	var _starttime=0;
	var _time=0;
	array_copy(_chartall,0,global.chartlist, 0, array_length(global.chartlist));
	for(var i=0;i<array_length(global.hidden);i++){
		array_push(_chartall,["H",global.hidden[i]]);
	}
	for(var i=0;i<array_length(global.camera);i++){
		array_push(_chartall,["C",global.camera[i][0],global.camera[i][1],global.camera[i][2],
		global.camera[i][3],global.camera[i][4],global.camera[i][5],
		global.camera[i][6],global.camera[i][7],global.camera[i][8]]);
	}
	for(var i=1;i<array_length(global.bpmlist);i++){
		array_push(_chartall,["B",global.bpmlist[i][0],global.bpmlist[i][1]]);
	}
	

	
	
	array_sort(_chartall,function(elm1, elm2){
			return real(elm1[1])-real(elm2[1]);
		});
	
	var _file;

	_file=get_save_filename("SDZ chart file|*.sdz", "data");

	if (_file != "")
	{
		_file = file_text_open_write(_file);
		
		file_text_write_string(_file, "[Meta]\ntitle = [test]\nmass = 0\nauthor = test\nmapper = test\noffset = ");
		file_text_write_string(_file, string_format(RoomCtrl.offset, 0, 3));
		file_text_write_string(_file, "\nbg_offset = 0\nbpm = "+string_format(_bpm, 0, 5)+"\n[Data]\n");
		
		for (var j = 0; j < array_length(_chartall); j++) {
			var _result_string="";
			
			_time=string_format(((_chartall[j][1]-_starttime)*_bpm)/60000, 0, 5);
			
			if _chartall[j][0]="B"{
				_result_string = "B,"+_time+",0,1,"+string_format(_chartall[j][2],0,5);
				_starttime=_chartall[j][1];
				_bpm=_chartall[j][2];
			}
			else if _chartall[j][0]="H"{
				_result_string = "H,"+_time+",0,1";
			}
			else if _chartall[j][0]="C"{
				var _timec=string_format((_chartall[j][3]*_bpm)/60000, 0, 5);
				_result_string = "C,"+_time+",0,1,"+string(_chartall[j][2])+","+_timec+",0,1,";
				for (var i = 4; i < array_length(_chartall[j]); i++) {
				    _result_string += string(_chartall[j][i]); // 确保转换为字符串
    
				    // 如果不是最后一个元素，添加分隔符
				    if (i < array_length(_chartall[j]) - 1) {
				        _result_string += ",";
				    }

				}
			}
			else{
				
				_result_string += string(_chartall[j][0]);
				_result_string += ",";
				_result_string += _time;
				_result_string += ",0,1,";
				
				
				for (var i = 2; i < array_length(_chartall[j]); i++) {
				
				
				
				
				    _result_string += string(_chartall[j][i]); // 确保转换为字符串
    
				    // 如果不是最后一个元素，添加分隔符
				    if (i < array_length(_chartall[j]) - 1) {
				        _result_string += ",";
				    }

				}
			}
			file_text_write_string(_file, _result_string+"\n");
			
		}
		
		
		
		file_text_close(_file);
	}
