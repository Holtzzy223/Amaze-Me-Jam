/// @description Insert description here
// You can write your code in this editor
//set up variables
if(room!=rm_menu && instance_exists(obj_player)&&!global.game_pause)
{

	var d,a,radarX,radarY;
	
	radarX = obj_player.x;
	
	radarY = obj_player.y;
	
	draw_set_alpha(0.6);
	draw_circle_color(display_get_gui_width()/12,display_get_gui_height()/7,160,c_green,c_blue,false)
	draw_set_alpha(1);
	//draw the station indicator


	//draw the  instance that are in range
	
	with(manager_factions)
	
	{
	
	    //how far
	
	    d = point_distance(radarX,radarY,x,y);
		
	    if(d <= 1000)  // This is the distance to check for
	
	    {
	
	        d = d/2400*360;
	
	        a = point_direction(radarX,radarY,x,y)
			if(faction ==FACTION.ENEMY)
			{
			  draw_sprite_ext(spr_radar, 0, display_get_gui_width()/12 + lengthdir_x(d,a),display_get_gui_height()/7 + lengthdir_y(d,a),0.75,0.75,image_angle,c_red,wave(0.4,0.8,1,0.25));
			}
			if(faction ==FACTION.NEUTRAL)
			{
				draw_sprite_ext(spr_radar_astroid, 0, display_get_gui_width()/12 + lengthdir_x(d,a),display_get_gui_height()/7 + lengthdir_y(d,a),0.75,0.75,image_angle,c_yellow,0.8);
			}
			if(faction ==FACTION.ALLY)
			{
				draw_sprite_ext(spr_radar, 0, display_get_gui_width()/12 + lengthdir_x(d,a),display_get_gui_height()/7 + lengthdir_y(d,a),0.75,0.75,image_angle,c_aqua,0.8);
			}
	    }
	
	}
}