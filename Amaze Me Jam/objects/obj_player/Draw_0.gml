/// @description Insert description here
// You can write your code in this editor
//
//shader_set(shdrRainbow);
//var uv = sprite_get_uvs(sprite_index, image_index);
//shader_set_uniform_f(_uniUV, uv[0], uv[2]);
//shader_set_uniform_f(_uniSpeed, _speed);
//shader_set_uniform_f(_uniTime, _time);
//shader_set_uniform_f(_uniSaturation, _saturation);
//shader_set_uniform_f(_uniBrightness, _brightness);
//shader_set_uniform_f(_uniSection, _section);
//shader_set_uniform_f(_uniMix, _mix);
//draw_self();
//shader_reset();

//

if(!dead && !global.game_pause)
{
	if(mouse_check_button(mb_right))
	{
			var range = point_distance(x, y, window_view_mouse_get_x(0),window_view_mouse_get_y(0));
			laser_firing = true
			energy-=0.85;
			if(energy > 0)
			{
				//draw_circle_color(x,y,range,c_blue,c_red,true);
				draw_set_alpha(wave(0.25,0.75,1,0.25));	
				draw_line_width_color(x,y,x+lengthdir_x(range,image_angle),y+lengthdir_y(range,image_angle),10,wave(c_white,c_blue,1,0.25),wave(c_blue,c_white,1,0.25));
				var _list = ds_list_create();
				var _num = collision_line_list(x , y, x+lengthdir_x(range,image_angle),y+lengthdir_y(range,image_angle), manager_factions, false, true, _list, false);
				if (_num > 0)
				    {
				    for (var i = 0; i < _num; ++i;)
				        {
							if (variable_instance_exists(_list[|i],"faction"))
							{
							//add in particels on collision
								if(_list[|i].faction!=faction)
								{
									_list[|i].damage_enemy(3);
								}
							}
						}
				    }
				ds_list_destroy(_list);
			}
			
	}
	else
	{
		laser_firing = false;
	}
		
		draw_set_alpha(1);
}
if(!dead||!flash)
{
	shader_set(sh_bloom);
	shader_set_uniform_f(bloom_handler,value);
	draw_self();
	shader_reset();
}
if(dead||flash)
{
	shader_reset();
	draw_self();
}
if(current_mission != noone && current_mission._status == STATUS.ACTIVE)
{
	if(current_mission._type == TYPE.KILL)
	{
		draw_text(bbox_left-8,bbox_top-8,"mission Kills: " + string(global.mission_kills));
	}
}
draw_text(x,y,string(inventory[| 0]));