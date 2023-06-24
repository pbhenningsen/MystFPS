var key_left  = keyboard_check_pressed(vk_left);
var key_right = keyboard_check_pressed(vk_right);
var key_up    = keyboard_check_pressed(vk_up);
var key_down  = keyboard_check_pressed(vk_down);


if key_up {
	indexnum++;	
	indexnum = clamp(indexnum,1,maxFrame);
	sprite_index = change_BG(indexnum);
}
if key_down {
	indexnum--;	
	indexnum = clamp(indexnum,1,maxFrame);
	sprite_index = change_BG(indexnum);
}