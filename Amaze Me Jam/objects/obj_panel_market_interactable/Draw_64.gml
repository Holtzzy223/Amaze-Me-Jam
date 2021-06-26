/// @description 

draw_self();
// Draw text
if(draw)
{
	draw_set_text(text_color,title_font,fa_center,fa_middle);
	draw_text(x + sprite_width / 2, y + padding , panel_title);
	//image
	draw_sprite(panel_sprite,0,x + sprite_width/2, y + padding * 3);
	
	//flavor
	draw_set_text(c_silver,desc_font,fa_center,fa_middle);
	draw_text(x + sprite_width / 2, y + padding * 4.5, panel_tag);
	//description
	draw_set_color(text_color);
	draw_text(x + sprite_width / 2, y + padding * 6 , panel_desc);
	draw_set_color(c_white);
	draw_text(x + sprite_width / 2, y + padding * 7.5, "Cost: "+string(upgrade_cost)+" Ore");
	//acquired?
	if(acquired)
	{
		draw_sprite(spr_acquired,0,x + sprite_width/2, y +sprite_width/2);
	}
}


