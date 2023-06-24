function VOKILLS(){
//audio_play_sound(sndAstrolabe,1,false);
	var _vo 
	var _oKills
	var _numKills = true;
	audio_sound_gain(sndMusic, .2, 0);
	audio_sound_gain(sndGunshot, .2, 0);
	//alarm[4] = 5;
	//audio_sound_gain(audio_play_sound(CEREBRALTURNEDUP,1,false),1,0)
	audio_play_sound(CEREBRALTURNEDUP,1,0,1);
	instance_create_layer(x,y,"Instances",oTenKills);
	tenKills = true;
	audio_sound_gain(sndMusic, .6, 3000);
	audio_sound_gain(sndGunshot,.3,3000);
}