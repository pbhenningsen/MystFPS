draw_self();

draw_set_colour($FF000000 & $ffffff);
var l1DFA49AE_0=($FF000000 >> 24);
draw_set_alpha(l1DFA49AE_0 / $ff);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, string(themessage) + string("|"));