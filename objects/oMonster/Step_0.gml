if (image_xscale = 9) 
{
	with(oPlayer) 
	{ 
		if (invincible == false) //&& (global.playerHealthMax > 0)
		{
			HurtPlayer(1);
			instance_create_layer(x,y,"Screenflash",oScreenFlash);
			audio_play_sound(sndDamage,1,0);
		}
	}
	
	instance_destroy();
}

