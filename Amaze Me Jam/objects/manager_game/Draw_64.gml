/// @description Insert description here
// You can write your code in this editor
//set up variables

var d,a,radarX,radarY;

radarX = obj_player.x;

radarY = obj_player.y;

draw_set_alpha(0.6);
draw_circle_color(view_get_wport(0)/8,view_get_hport(0)/6,180,c_blue,c_green,false)
draw_set_alpha(1);
//draw the wall instance that are in range

with(manager_factions)

{

    //how far

    d = point_distance(radarX,radarY,x,y);

    if(d <= 1000)  // This is the distance to check for

    {

        d = d/600*75;

        a = point_direction(radarX,radarY,x,y)
		if(faction ==FACTION.ENEMY)
		{
		  draw_sprite_ext(spr_radar, 0, view_get_wport(0)/8 + lengthdir_x(d,a),view_get_hport(0)/6 + lengthdir_y(d,a),1,1,image_angle,c_red,wave(0.6,1,2,0.5));
		}
		else
		{
			draw_sprite_ext(spr_radar, 0, view_get_wport(0)/8 + lengthdir_x(d,a),view_get_hport(0)/6 + lengthdir_y(d,a),1,1,image_angle,c_aqua,0.8);
		}
    }

}