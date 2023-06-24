x = mouse_x;
y = mouse_y;

x = clamp(x,67,1213);
y = clamp(y,67,701);

with(oMonster){
	if (hp <= 0)
	{
		instance_change(oMonsterDying,true);
		global.kills ++;
		audio_sound_gain(audio_play_sound(sndEnemyDie,3,false),3,0);
	
	}
}



