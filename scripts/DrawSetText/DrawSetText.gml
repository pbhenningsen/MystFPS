/// @arg color
/// @arg font
/// @arg halign
/// @arg valign

function DrawSetText(){
	draw_set_color(argument[0]);
	draw_set_font(argument[1]);
	draw_set_halign(argument[2]);
	draw_set_valign(argument[3]);
}