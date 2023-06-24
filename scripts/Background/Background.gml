// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_BG(_index){
	var bgnum = string_format(real(_index) , 3, 0);
	var stringreplace = string_replace_all(bgnum," ", "0")
	return asset_get_index("sprBG" + stringreplace);
}

function indexToSprite(){
	var mapIndex = global.map_[controllerX_][controllerY_][1][image_index];
	with oBackground {
		sprite_index = change_BG(mapIndex);
	}	
}




function hasPath(_x,_y){
	if controllerX_+_x < 0 return false;
	if controllerY_+_y < 0 return false;
	var _index = global.map_[controllerX_+_x][controllerY_+_y][0];
	if  _index != 0	return true;
	return false;
}

function indexToBG(_index){
	var mapIndex = global.map_[controllerX_][controllerY_][1][_index];
	var lay_id = layer_get_id("GameBG");
	var back_id = layer_background_get_id(lay_id);
	if mapIndex == 0 {
	    mapIndex = global.map_[controllerX_][controllerY_][1][0];
	}
	layer_background_sprite(back_id, change_BG(mapIndex));
	
}

function teleportToPath(fromX,fromY,fromDir,toX,toY,toDir){
	with oPlayer {
		if (controllerX_ == fromX and controllerY_ == fromY and dir_ == fromDir) {
			controllerX_ = toX;
			controllerY_ = toY;
			dir_         = toDir;
			direction = dir_ * 90;
			indexToBG(dir_);
			 return true;
		}
	}
	return false;
}

function hasNoPath(fromX,fromY,fromDir){
	with oPlayer {
		if (controllerX_ == fromX and controllerY_ == fromY and dir_ == fromDir) {
			 return true;
		}
	}
	return false;
}

