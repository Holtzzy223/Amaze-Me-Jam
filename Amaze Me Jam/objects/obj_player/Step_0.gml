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
		var thrust = 0.1;
		speed = clamp(speed,0,5);
		motion_add(image_angle,thrust);
		
		if (speed > 0.25)
	    {
			
			effect_create_below(ef_spark, x, y, 0, c_yellow);
	    }
		
		
	}
	if(keyboard_check_pressed(vk_space))
	{
		if(obj_player.speed >=1)
		{
			bullet_speed=5+obj_player.speed;		
		}
		else
		{
			bullet_speed = 5;
		}
		spawn_projectile(obj_player_bullet,image_angle,bullet_speed,faction,snd_pewpew);


		
	}
}
else 
if(dead)
{
	image_alpha -= 0.01;
	image_angle +=5;
}
_time += speed / room_speed;

if(flash)
{
	image_blend = c_white;
	image_alpha = wave(0.5,1,0.5,.25);
}
