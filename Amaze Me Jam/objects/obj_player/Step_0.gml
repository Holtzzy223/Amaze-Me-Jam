/// @description Insert description here
// You can write your code in this editor
if(!dead)
{
	if(keyboard_check(vk_left))
	{
		image_angle +=5;
	}
	if(keyboard_check(vk_right))
	{
		image_angle-=5;
	}
	if(keyboard_check(vk_up))
	{
		var thrust = 0.025;
		speed = clamp(speed,0,5);
		motion_add(image_angle,thrust);
		
		if (speed > 0.25)
	    {
			
			effect_create_below(ef_spark, x, y, 0, c_yellow);
	    }
		
		
	}
	if(keyboard_check_pressed(vk_space))
	{
		var bullet = instance_create_depth(x+lengthdir_x(sprite_width,image_angle),y+lengthdir_y(sprite_height,image_angle),depth+1,obj_player_bullet);
		with(bullet)
		{
			if(obj_player.speed >=1)
			{
				motion_set(obj_player.image_angle,4*obj_player.speed);
				
			}
			else
			{
				motion_set(obj_player.image_angle,4);
			}
		}
		//if(!audio_is_playing(snd_pewpew))
		{
			audio_sound_pitch(snd_pewpew,random_range(0.6,1.1));
			audio_play_sound(snd_pewpew,1,false);
		}
		
	}
}
else 
if(dead)
{
	image_alpha -= 0.01;
	image_angle +=5;
}
