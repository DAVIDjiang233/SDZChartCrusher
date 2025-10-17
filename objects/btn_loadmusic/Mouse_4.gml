    var _file,_player;

    _file=get_open_filename("music|*.ogg", "");
	
	var i=0;
    if (_file != "")
    {
		//show_debug_message(working_directory + "base.ogg");
		file_copy(_file, working_directory + "base.ogg");
		with RoomCtrl{
		musicplay=audio_create_stream(working_directory+"/base.ogg");
		global.musictime=audio_sound_length(musicplay)*1000;
		}
		
			
			if(global.charttime>global.musictime){
			global.charttime=0;
			global.list=0;
			scr_listchange(1);
			}
    }
	
//show_debug_message(RoomCtrl.musicplay);

	
   