if mousein==0 exit;
if global.musicspeed>0.2 global.musicspeed=round(global.musicspeed*20-1)/20;


with RoomCtrl{
	if chartplay==1{
		audio_stop_all();
		starttime=current_time-global.charttime/global.musicspeed;
		if musicplay!=0{
		audio_play_sound_ext({sound:musicplay,pitch: global.musicspeed,offset:(offset+(global.charttime/1000))});
		}
	}
}