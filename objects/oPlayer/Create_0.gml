image_speed = 0;
image_index = 0;
dir_ = 1;
direction = dir_ * 90;
offset_ = 16;
maxFrame = 14;
controllerX_ = 16;
controllerY_ = 15;
x = controllerX_ * offset_;
y = controllerY_ * offset_;
global.map_ = FileToArray("map.txt",json_parse);
window_set_cursor(cr_none);
alarm[3]=30;
global.playerHealthMax = 5;
global.playerHealth = global.playerHealthMax;
global.kills = 0;
global.gameOver = false;
global.gameWon = false;
invincible = false;


killtextscale = 1;


indexToBG(dir_);
//loaded_array_ = FileToArray("map.txt", json_parse);

