// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_object_at_camera_bounds(object_to_spawn,spawn_count,_layer,pad)
{
	var xx,yy;
	
	if(spawn_count >= 1)
	{
		repeat(spawn_count)
		{
			xx = random_range(0,room_width);
			yy = random_range(0,room_height);
			while(point_in_rectangle(xx,yy,global.cam_x-pad,global.cam_y-pad,
									global.cam_x+global.camera_width+pad,
									global.cam_y+global.camera_height+pad))
			{
				xx = random_range(0,room_width);
				yy = random_range(0,room_height);
			}
			instance_create_layer(xx,yy,_layer,object_to_spawn);
		}
	}
}

function spawn_projectile(_projectile,_direction,_speed,_faction,_sound)
{
	audio_sound_pitch(_sound,random_range(0.6,0.9));
	audio_play_sound(_sound,1,false);
	var _creator = id;
	var inst = instance_create_layer(x+lengthdir_x(sprite_width*0.4,image_angle),y+lengthdir_y(sprite_height*0.4,image_angle),"Bullets",_projectile);
	
		with(inst)
		{
			direction = _direction;
			speed = _speed;
			faction = _faction;
			creator = _creator;
		}
}
