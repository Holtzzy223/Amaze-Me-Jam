/// @description Draw Panel

draw_self();

// Draw text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_station);

draw_set_color(text_color);
draw_text(x + sprite_width / 2, y+164,panel_desc);
draw_set_color(c_white);

draw_set_halign(fa_left);
draw_set_valign(fa_top);