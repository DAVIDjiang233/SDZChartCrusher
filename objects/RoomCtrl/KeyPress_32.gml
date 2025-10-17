if (global.view==5&&RoomCtrl.showsdz==1&&!keyboard_check(vk_shift)) exit;

if chartplay==0{
	starttime=current_time-global.charttime/global.musicspeed;
	chartplay=1;
	if musicplay!=0{
	audio_play_sound_ext({sound:musicplay,pitch: global.musicspeed,offset:(offset+(global.charttime/1000))});
	}
}

else {
	chartplay=0;
	audio_stop_all();
}