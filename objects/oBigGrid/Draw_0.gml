draw_self();
var _offset = 85;
var _grid    = global.map_[oPointer.controllerX_][oPointer.controllerY_][1];
var _haspath = global.map_[oPointer.controllerX_][oPointer.controllerY_][0];
draw_set_font(fntMain);
draw_set_color(c_grey);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if _grid[0] != 0 draw_text(x,y,_grid[0]);
if _grid[1] != 0 draw_text(x,y-_offset,_grid[1]);
if _grid[2] != 0 draw_text(x-_offset,y,_grid[2]);
if _grid[3] != 0 draw_text(x,y+_offset,_grid[3]);
if _grid[4] != 0 draw_text(x+_offset,y,_grid[4]);
var _www = (_haspath == true ? "true" : "false"); 
draw_text(x,y+300,_www);