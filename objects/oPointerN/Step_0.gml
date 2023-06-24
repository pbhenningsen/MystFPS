with oPlayer {
	switch (other.image_angle) {
	    case 90: // forward
			if hasNoPath(16,12,3) { other.visible = true; exit;}
			if hasNoPath(16,13,1) { other.visible = true; exit;}
			if hasNoPath(11,18,3) { other.visible = true; exit;}
			if hasNoPath(10,18,3) { other.visible = true; exit;}
			if hasNoPath(10,19,4) { other.visible = true; exit;}
			if hasNoPath(8,13,1) { other.visible = true;  exit;}
			if hasNoPath(8,15,3) { other.visible = false;  exit;}
			if hasNoPath(9,14,2) { other.visible = false;  exit;}
			if hasNoPath(9,13,2) { other.visible = false;  exit;}
	
			if hasPath(lengthdir_x(1,direction),lengthdir_y(1,direction)) {	
				other.visible = true;
				exit;
			} 
			other.visible = false;
	        break;
	    case 0: // right
			var _dir = dir_ - 1;
			_dir = (_dir <= 0 ? 4 : _dir);
			if global.map_[controllerX_][controllerY_][1][_dir]!=0 {
				other.visible = true;
			} else {
				other.visible = false;
			}				
	        break;
	    case 270: // down
			if global.map_[controllerX_][controllerY_][1][0]!=0 {
				other.visible = true;
				exit;
			}
			var _dir = dir_ + 2;
			if _dir == 5 _dir = 1;
			if _dir > 4  _dir = 2;
			if global.map_[controllerX_][controllerY_][1][_dir]!=0 {
				other.visible = true;
				exit;
			}
			other.visible = false;				
	        break;
	    case 180: // left
			var _dir = dir_ + 1;
			_dir = (_dir > 4 ? 1 : _dir);
			if global.map_[controllerX_][controllerY_][1][_dir]!=0 {
				other.visible = true;
			} else {
				other.visible = false;
			}				
	        break;
	}
}

