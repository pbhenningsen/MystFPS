

draw_set_color(c_black);
draw_set_alpha(opacity);
draw_rectangle( 0, 0, room_width, room_height, false);

opacity = clamp(opacity + (fadeAmount*2), 0, 1);//increase,decrease opacity

if (opacity == 1)//fully faded in
{
	if (alarm[0] < 0) 
	{
		alarm[0] = room_speed/2;//checking to see if an alarm is not actively set
	}
}



if (opacity == 0) and readyToDestroy//fully faded out
{
	instance_destroy();
}

draw_set_alpha(1);