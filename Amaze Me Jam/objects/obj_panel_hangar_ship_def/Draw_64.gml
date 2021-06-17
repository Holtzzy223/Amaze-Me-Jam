/// @description 
draw_self();
// Draw text
if(draw)
{
	//title
	draw_set_text(text_color,fnt_title,fa_center,fa_middle);
	draw_text(x + sprite_width / 2, y + padding * 2, panel_title);
	//image
	draw_sprite(obj_player.sprite_index,0,x + sprite_width/2, y + padding*4);
	//flavor
	draw_set_text(c_silver,fnt_desc,fa_center,fa_middle);
	draw_text(x + sprite_width / 2, y + padding * 6, panel_tag);
	//description
	draw_set_color(text_color);
	draw_text(x + sprite_width / 2, y + padding * 8 , panel_desc);
	draw_text(x + sprite_width / 2, y + padding * 10 , ship_health);
	draw_text(x + sprite_width / 2, y + padding * 11 , ship_speed);
	draw_text(x + sprite_width / 2, y + padding * 12, ship_energy);
	draw_text(x + sprite_width / 2, y + padding * 13, ship_shield);
	draw_text(x + sprite_width / 2, y + padding * 14 , ship_primary_weapon);
	draw_text(x + sprite_width / 2, y + padding * 15, ship_auxilliary_weapon);
	
	//reset
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
