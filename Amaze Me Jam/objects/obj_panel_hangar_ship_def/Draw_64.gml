/// @description 
draw_self();

// Draw text
if(draw)
{
	if(!can_access)
	{
		draw_sprite(spr_lock,0,x+sprite_width/2,y+sprite_height/2);
	}
	//title
	draw_set_text(text_color,title_font,fa_center,fa_middle);
	draw_text(x + sprite_width / 2, y + padding , panel_title);
	//image
	draw_sprite(ship_sprite,0,x + sprite_width/2, y + padding*3);
	//flavor
	draw_set_text(c_silver,desc_font,fa_center,fa_middle);
	draw_text(x + sprite_width / 2, y + padding * 5, panel_tag);
	//description
	draw_set_color(text_color);
	draw_text(x + sprite_width / 2, y + padding * 7 , panel_desc);
	draw_set_text(c_white,stat_font,fa_left,fa_middle);
	draw_text(x + sprite_width / 8, y + padding * 9 , ship_health);
	draw_text(x + sprite_width / 8, y + padding * 10 , ship_speed);
	draw_text(x + sprite_width / 8, y + padding * 11, ship_energy);
	draw_text(x + sprite_width / 8, y + padding * 12, ship_shield);
	draw_text(x + sprite_width / 8, y + padding * 13 , ship_primary_weapon);
	draw_text(x + sprite_width / 8, y + padding * 14, ship_auxilliary_weapon);
	draw_set_text(c_yellow,desc_font,fa_center,fa_middle);
	draw_text(x + sprite_width / 8, y + padding * 15,"Allies Saved" + string(obj_player.allies_saved)+" / "+string(allies_needed));
	
	//reset
	draw_set_text(c_white,fnt_text_box,fa_left,fa_top);

}
