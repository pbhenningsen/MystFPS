with oPlayer {
	if global.map_[controllerX_][controllerY_][1][0]!=0 {
		other.visible = true;
	} else {
		other.visible = false;
	}
} 


// Inherit the parent event
event_inherited();

