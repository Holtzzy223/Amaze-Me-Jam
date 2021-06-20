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
	if(track_station)
	{
		d= point_distance(x,y,obj_station.x,obj_station.y)/20;
		if(d >= 30)
		{
			draw_set_alpha(wave(0.35,0,5,1));
			draw_set_color(c_aqua);
			draw_path(path, x, y, false);
			draw_set_color(c_white);
			draw_set_alpha(1);
		}
	}
	if(mouse_check_button(mb_right))
	{
			var range = point_distance(x, y, window_view_mouse_get_x(0),window_view_mouse_get_y(0));
			laser_firing = true
			//determine drain
				switch(current_laser)
				{
					case LASER.STANDARD:
						energy_drain = 0.85;
					break;
					case LASER.RUBY:
						energy_drain = 1;
					break;
					case LASER.EMERALD:
						energy_drain = 0.55;
					break;
					case LASER.OMEGA:
						energy_drain = 1.5;
					break;
				}
			energy-= energy_drain;
			if(energy > 0)
			{
				audio_sound_pitch(snd_laser,irandom_range(1.2,1.0))
				if(!audio_is_playing(snd_laser))
				{
					audio_play_sound(snd_laser,1,false);
				}
				//draw_circle_color(x,y,range,c_blue,c_red,true);
				switch(current_laser)
				{
					case LASER.STANDARD:
						laser_damage = 3;
						draw_set_alpha(wave(0.05,0.45,2,0.25));	
						draw_line_width_color
						(
							x,y,x+lengthdir_x(range,image_angle),
							y+lengthdir_y(range,image_angle),
							10,
							wave(c_white,c_blue,1,0.25),
							wave(c_blue,c_white,1,0.25)
						);
						draw_set_alpha(1);
					break;
					case LASER.RUBY:
						laser_damage = 5;
						draw_set_alpha(wave(0.05,0.25,2,0.25));	
						draw_line_width_color
						(
							x,y,x+lengthdir_x(range,image_angle),
							y+lengthdir_y(range,image_angle),
							20,
							wave(c_red,c_maroon,1,0.25),
							wave(c_maroon,c_red,1,0.25)
						);
						draw_set_alpha(1);
						draw_set_alpha(wave(0.35,0.65,1,0.25));	
						draw_line_width_color
						(
							x,y,x+lengthdir_x(range,image_angle),
							y+lengthdir_y(range,image_angle),
							10,
							wave(c_red,c_maroon,1,0.25),
							wave(c_maroon,c_red,1,0.25)
						);
						draw_set_alpha(1);
					break;
					case LASER.EMERALD:
						laser_damage = 3;
						draw_set_alpha(wave(0.05,0.35,1,0.25));	
						draw_line_width_color
						(
							x,y,x+lengthdir_x(range,image_angle),
							y+lengthdir_y(range,image_angle),
							6,
							wave(c_lime,c_green,1,0.25),
							wave(c_green,c_lime,1,0.25)
						);
					break;
					case LASER.OMEGA:
						laser_damage = 7;
						draw_set_alpha(wave(0.05,0.35,1,0.25));
						draw_line_width_color
						(
							x,y,x+lengthdir_x(range,image_angle),
							y+lengthdir_y(range,image_angle),
							30,
							wave(c_white,c_blue,1,0.25),
							wave(c_blue,c_white,1,0.25)
						);
						draw_set_alpha(wave(0.35,0.65,2,0.25));	
						draw_line_width_color
						(
							x,y,x+lengthdir_x(range,image_angle),
							y+lengthdir_y(range,image_angle),
							20,
							wave(c_red,c_maroon,2,0.25),
							wave(c_green,c_lime,1,0.25)
						);
						draw_set_alpha(1);
					break;
				}
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
									_list[|i].damage_enemy(laser_damage);
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
if(!dead && !flash)
{
	shader_set(sh_bloom);
	shader_set_uniform_f(bloom_handler,value);
	draw_self();
	shader_reset();
}else
if(dead)
{
	shader_reset();
	draw_self();
}else
if (flash > 0)
{
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}
