killtextscale = max(killtextscale * 0.95, 1);
draw_set_font(fontName);
draw_set_color(textColor);
draw_set_halign(halign);
draw_set_valign(valign);
draw_text_transformed(480, 100, displayText, killtextscale, killtextscale, 0);