
if keyboard_check_pressed(vk_enter){
	with oPointer {
		global.map_[controllerX_][controllerY_][1][image_index] = other.themessage;
		var _N1 = global.map_[controllerX_][controllerY_][1][0];
		var _N2 = global.map_[controllerX_][controllerY_][1][1];
		var _N3 = global.map_[controllerX_][controllerY_][1][2];
		var _N4 = global.map_[controllerX_][controllerY_][1][3];
		var _N5 = global.map_[controllerX_][controllerY_][1][4];
		if _N1+_N2+_N3+_N4+_N5 == 0 {
			global.map_[controllerX_][controllerY_][0] = false;
		} else {
			global.map_[controllerX_][controllerY_][0] = true;
		}
		indexToSprite();
		ArrayToFile("map.txt",global.map_,json_stringify);
	}	
	instance_destroy();
}else{
	themessage = keyboard_string;
}