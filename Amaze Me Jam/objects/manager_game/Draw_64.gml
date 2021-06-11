/// @description Insert description here
// You can write your code in this editor
//set up variables

var d,a,radarX,radarY;

radarX = obj_player.x;

radarY = obj_player.y;

draw_set_alpha(0.6);
draw_circle_color(display_get_gui_width()/11,display_get_gui_height()/6,180,c_green,c_blue,false)
draw_set_alpha(1);
//draw the wall instance that are in range

with(manager_factions)

{

    //how far

    d = point_distance(radarX,radarY,x,y);

    if(d <= 2600)  // This is the distance to check for

    {

        d = d/1200*75;

        a = point_direction(radarX,radarY,x,y)
		if(faction ==FACTION.ENEMY)
		{
		  draw_sprite_ext(spr_radar, 0, display_get_gui_width()/11 + lengthdir_x(d,a),display_get_gui_height()/6 + lengthdir_y(d,a),1,1,image_angle,c_red,wave(0.6,1,2,0.5));
		}
		if(faction ==FACTION.NEUTRAL)
		{
			draw_sprite_ext(spr_radar_astroid, 0, display_get_gui_width()/11 + lengthdir_x(d,a),display_get_gui_height()/6 + lengthdir_y(d,a),1,1,image_angle,c_yellow,0.8);
		}
		if(faction ==FACTION.ALLY)
		{
			draw_sprite_ext(spr_radar, 0, display_get_gui_width()/11 + lengthdir_x(d,a),display_get_gui_height()/6 + lengthdir_y(d,a),1,1,image_angle,c_aqua,0.8);
		}
    }

}