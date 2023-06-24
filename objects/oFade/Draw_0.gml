

draw_set_color(c_black);
draw_set_alpha(opacity);
draw_rectangle( 0, 0, room_width, room_height, false);

opacity = clamp(opacity + fadeAmount, 0, 1);//increase,decrease opacity

if (opacity == 1)//fully faded in
{
	if (alarm[0] < 0) 
	{
		alarm[0] = room_speed * 6.5;//checking to see if an alarm is not actively set
	}
	if (alarm[0] > 0)
	{
		killtextscale = max(killtextscale * 0.95,1);
		DrawSetText(c_red, fntMain, fa_center, fa_center);
		draw_text_transformed(480,288,myText, killtextscale,killtextscale,0);
	}

}



if (opacity == 0) and readyToDestroy//fully faded out
{
	instance_destroy();
}

draw_set_alpha(1);