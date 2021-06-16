/// @description 
draw_self();

// Draw text
draw_set_text(text_color,fnt_title,fa_center,fa_middle);
draw_text(x + sprite_width / 2, y - padding, panel_title);
draw_set_text(text_color,fnt_desc,fa_bottom,fa_right);
draw_text(x + sprite_width / 2, y + padding*4 , panel_desc);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);