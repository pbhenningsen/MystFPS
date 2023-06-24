/// @desc Just before gameover
with (oMonster) image_speed = 0.2;
with(oBullseye) instance_destroy();
audio_stop_all();
audio_play_sound(FAILUREMYSTREV,1,0);
//alarm[9] = 120;
instance_create_layer(0,0,"Fade",oFadeOut);
window_set_cursor(cr_default);
global.gameOver = true;
alarm[11] = room_speed * 6;








