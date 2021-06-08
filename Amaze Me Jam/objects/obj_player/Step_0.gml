/// @description Insert description here
// You can write your code in this editor
if(!dead)
{
	if(keyboard_check(vk_left))
	{
		image_angle +=7;
	}
	if(keyboard_check(vk_right))
	{
		image_angle-=7;
	}
	if(keyboard_check(vk_up))
	{
		var thrust = 0.3;
		speed = clamp(speed,0,17);
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
			bullet_speed =15+obj_player.speed;		
		}
		else
		{
			bullet_speed = 15;
		}
		spawn_projectile(obj_player_bullet,image_angle,bullet_speed,faction,snd_pewpew);


		
	}
	if(flash)
	{
		image_blend = c_white;
		image_alpha = wave(0.25,1,0.5,.25);
	}
}
else 
if(dead)
{
	image_alpha -= 0.01;
	image_angle +=5;
}
if(image_alpha <= 0)
{
	room_restart();
}

value = wave(0,speed/4,3,0.25);
//_time += speed / room_speed;