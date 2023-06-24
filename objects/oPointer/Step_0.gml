var key_left  = keyboard_check_pressed(vk_left);
var key_right = keyboard_check_pressed(vk_right);
var key_up    = keyboard_check_pressed(vk_up);
var key_down  = keyboard_check_pressed(vk_down);

var key_a  = keyboard_check_pressed(ord("A"));
var key_s  = keyboard_check_pressed(ord("S"));
var key_d  = keyboard_check_pressed(ord("D"));
var key_w  = keyboard_check_pressed(ord("W"));

var key_space  = keyboard_check_pressed(vk_space);

if key_space {
	if !instance_exists(oText) instance_create_depth(100,10,0,oText);
}

if key_d {
	image_index--;
	image_index = (image_index < 0 ? image_number-1 : image_index);
	indexToSprite();
}
if key_a {
	image_index++;
	image_index = (image_index > image_number-1 ? 0 : image_index);
	indexToSprite();
}

//if key_up  {
//	controllerX_ += lengthdir_x(1,direction);
//	controllerY_ += lengthdir_y(1,direction);
//	controllerX_ = clamp(controllerX_,0,20);
//	controllerY_ = clamp(controllerY_,0,20);
//	x = controllerX_ * offset_;
//	y = controllerY_ * offset_;
//	indexToSprite();
//}
//if key_down  {
//	controllerX_ -= lengthdir_x(1,direction);
//	controllerY_ -= lengthdir_y(1,direction);
//	controllerX_ = clamp(controllerX_,0,20);
//	controllerY_ = clamp(controllerY_,0,20);
//	x = controllerX_ * offset_;
//	y = controllerY_ * offset_;
//	indexToSprite();
//}

if key_left  {
	controllerX_--;
	controllerX_ = clamp(controllerX_,0,20);
	x = (controllerX_ * offset_) + indent_;
	indexToSprite();
}

if key_right  {
	controllerX_++;
	controllerX_ = clamp(controllerX_,0,20);
	x = (controllerX_ * offset_) + indent_;
	indexToSprite();
}

if key_up  {
	controllerY_--;
	controllerY_ = clamp(controllerY_,0,20);
	y = (controllerY_ * offset_) + indent_;
	indexToSprite();
}

if key_down  {
	controllerY_++;
	controllerY_ = clamp(controllerY_,0,20);
	y = (controllerY_ * offset_) + indent_;
	indexToSprite();
}