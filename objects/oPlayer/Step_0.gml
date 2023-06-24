var key_left  = keyboard_check_pressed(vk_left);
var key_right = keyboard_check_pressed(vk_right);
var key_up    = keyboard_check_pressed(vk_up);
var key_down  = keyboard_check_pressed(vk_down);

var key_a  = keyboard_check_pressed(ord("A"));
var key_s  = keyboard_check_pressed(ord("S"));
var key_d  = keyboard_check_pressed(ord("D"));
var key_w  = keyboard_check_pressed(ord("W"));


if key_right or key_d {
	var _dir  = dir_ - 1;
	_dir = (_dir <= 0 ? 4 : _dir);
	if global.map_[controllerX_][controllerY_][1][_dir]!=0 {
		dir_ = _dir;
		direction = dir_ * 90;
		indexToBG(dir_);
		spawn_monster(1,3,x,y);
		
	}
}

if key_left or key_a{
	var _dir  = dir_ + 1;
	_dir = (_dir > 4 ? 1 : _dir);
	if global.map_[controllerX_][controllerY_][1][_dir]!=0 {
		dir_ = _dir;
		direction = dir_ * 90;
		indexToBG(dir_);
		spawn_monster(2,5,x,y);
	}
}

if key_down or key_s {
	if global.map_[controllerX_][controllerY_][1][0]!=0 {
		controllerX_ += lengthdir_x(-1,direction);
		controllerY_ += lengthdir_y(-1,direction);
		controllerX_ = clamp(controllerX_,0,20);
		controllerY_ = clamp(controllerY_,0,20);
		x = controllerX_ * offset_;
		y = controllerY_ * offset_;	
		indexToBG(dir_);
	
	} else {
		var _dir = dir_+ 2;
		if _dir == 5 _dir = 1;
		if _dir > 4  _dir = 2;
		if global.map_[controllerX_][controllerY_][1][_dir]!=0 {	
			dir_ = _dir;
			direction = dir_ * 90;
			indexToBG(dir_);
			spawn_monster(3,6,x,y);
		}
	}
}

if key_up or key_w
{
	if teleportToPath(16,12,3,16,14,3) exit;
	if teleportToPath(16,13,1,16,12,2) exit;
	if teleportToPath(11,18,3,11,19,2) exit;
	if teleportToPath(10,18,3,10,19,2) exit;
	if teleportToPath(10,19,4,11,19,1) exit;
	if teleportToPath(9,14,2,9,14,2) exit;
	if teleportToPath(8,13,1,8,12,4) exit;
	if teleportToPath(8,15,3,8,15,3) exit;
	if teleportToPath(9,13,2,9,13,2) exit;
	
	if hasPath(lengthdir_x(1,direction),lengthdir_y(1,direction)) {	
		controllerX_ += lengthdir_x(1,direction);
		controllerY_ += lengthdir_y(1,direction);
		controllerX_ = clamp(controllerX_,0,20);
		controllerY_ = clamp(controllerY_,0,20);
		x = controllerX_ * offset_;
		y = controllerY_ * offset_;
		indexToBG(dir_);
		spawn_monster(4,5,x,y);
	}
}


if (global.gameWon == false) && (global.kills >= 100)
{
	with(oMonster) image_speed = 0;
	invincible = true;
	audio_stop_all();
	audio_play_sound(SUCCESSMYSTTURNEDUP,1,0);
	global.gameWon = true;
	instance_create_layer(0,0,"Fade",oFadeOutWin);
//	room_goto(rmWon);	
	//global.gameOver = true;
	//alarm[11] = room_speed;


}

var killThresholds = [10, 20, 30, 40, 50, 60, 70, 80, 90];
var soundArray = [CEREBRALTURNEDUP, SADISTICSUNDIALTURNEDUP, SINFULSCHOLAR, BLOODSCRIBE, MALFEASANTM, PAINFULPY, CARTOGRAPHER, MAGISTER, TWISTEDTELESCOPE];
var killTitles = ["CEREBRAL", "SADISTIC", "SINFUL", "BLOODSCRIBE", "MALFEASANT", "PAINFUL", "CARTOGRAPHER", "MAGISTER", "TWISTED"];

for (var i = 0; i < array_length(killThresholds); i++)
{
    if (global.kills >= killThresholds[i] && !variable_global_get("killsReached_" + string(killThresholds[i])))
    {
        audio_sound_gain(sndMusic, .2, 0);
        audio_sound_gain(sndGunshot, .2, 0);
        audio_sound_gain(audio_play_sound(soundArray[i], 1, false), 1, 0);//soundArray[i] means it will be integered up along with the loop

        var killNotification = instance_create_layer(x, y, "Instances", oKillNotification);
        killNotification.displayText = killTitles[i] + "\n" + string(killThresholds[i]) + " Kills!";

        variable_global_set("killsReached_" + string(killThresholds[i]), true);
        audio_sound_gain(sndMusic, .6, 3000);
        audio_sound_gain(sndGunshot, .3, 3000);
    }
}



