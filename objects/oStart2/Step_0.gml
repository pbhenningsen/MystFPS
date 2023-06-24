var mouse_y_gui = device_mouse_y_to_gui(0);
var mouse_x_gui = device_mouse_x_to_gui(0);

if (mouse_y_gui > 450) && (mouse_y_gui < 475) && (mouse_x_gui > 280) && (mouse_x_gui <675)
{
	menu_cursor = 1;
	if(mouse_check_button_pressed(mb_left)) && pressed = 0
	{
		audio_stop_all();
		audio_play_sound(sndStart,1,0);
		instance_create_layer(0,0,"Fade",oFade);
		alarm[0] = room_speed *1.5;
		pressed = 1;
	}
}
else
{
	menu_cursor = 0;
}







