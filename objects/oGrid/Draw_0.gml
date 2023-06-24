draw_self();
var _offset = 4;
var _indent = 10;
var _grid = global.map_[gridX_][gridY_][1];
draw_set_color(c_white);
draw_set_halign(fa_center);
var _x1 = x - _offset;
var _y1 = y - _offset;
var _x2 = x + _offset;
var _y2 = y + _offset;

if _grid[0] != 0 draw_rectangle(_x1,_y1,_x2,_y2,false);
if _grid[1] != 0 draw_rectangle(_x1,_y1-_indent,_x2,_y2-_indent,false);
if _grid[2] != 0 draw_rectangle(_x1-_indent,_y1,_x2-_indent,_y2,false);
if _grid[3] != 0 draw_rectangle(_x1,_y1+_indent,_x2,_y2+_indent,false);
if _grid[4] != 0 draw_rectangle(_x1+_indent,_y1,_x2+_indent,_y2,false);