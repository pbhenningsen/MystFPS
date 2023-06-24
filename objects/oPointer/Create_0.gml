image_speed = 0;
image_index = 2;
offset_ = 32;
indent_ = 64;
maxFrame = 14;
controllerX_ = 19;
controllerY_ = 12;
x = (controllerX_ * offset_) + indent_;
y = (controllerY_ * offset_) + indent_;
global.map_ = FileToArray("map.txt",json_parse);

if global.map_ == undefined{
	for (var ww = 0; ww <= 20; ++ww) {
	    for (var hh = 0; hh <= 20; ++hh) {
			global.map_[ww][hh] = [false,	["0","0","0","0","0"] ];
		}
	}
}

for (var ww = 0; ww <= 20; ++ww) {
	for (var hh = 0; hh <= 20; ++hh) {
		with instance_create_depth((ww * offset_) + indent_ ,(hh * offset_) + indent_ ,0,oGrid) {
			gridX_ = ww;
			gridY_ = hh;
		}
	}
}

indexToSprite();
