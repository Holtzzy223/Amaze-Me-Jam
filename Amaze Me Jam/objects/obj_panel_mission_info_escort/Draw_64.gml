/// @description 
draw_self();

// Draw text
if(draw)
{
	draw_set_text(text_color,fnt_title,fa_center,fa_middle);
	draw_text(x + sprite_width / 2, y - padding, panel_title);
	draw_set_text(c_silver,fnt_desc,fa_center,fa_middle);
	draw_text(x + sprite_width / 2, y + padding * 3, panel_tag);
	draw_set_color(text_color);
	draw_text(x + sprite_width / 2, y + padding * 6 , panel_desc);
	//ore reward test
	draw_text(x + sprite_width / 2, y + padding * 8 , string(panel_reward));
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}