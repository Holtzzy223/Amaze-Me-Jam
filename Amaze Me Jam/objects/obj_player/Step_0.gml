/// @description Insert description here
// You can write your code in this editor
if(!dead)
{
	if(keyboard_check(vk_left))
	{
		image_angle =lerp(image_angle,image_angle+input_magnitude,0.1);;
	}
	if(keyboard_check(vk_right))
	{
		image_angle=lerp(image_angle,image_angle-input_magnitude,0.1);;
	}
	if(keyboard_check(vk_up))
	{
		var thrust = 0.3;
		speed = clamp(speed,0,17);
		motion_add(image_angle,thrust);
		thrust_counter++;
		if(thrust_counter >= 4)
		{
			thrust_counter = 0;
			if (speed > 0.25)
			{
				
				part_particles_create(manager_particles.particle_system,x-lengthdir_x(sprite_width*0.4,image_angle), y-lengthdir_y(sprite_height/2,image_angle),manager_particles.particle_exhaust_player,1);
				//effect_create_below(ef_spark, x-lengthdir_x(sprite_width/2,image_angle), y-lengthdir_y(sprite_height/2,image_angle), 0, c_yellow);
			}
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
	//LASERS
	
	if(flash)
	{
		image_blend = c_white;
		image_alpha = wave(0.0,1,0.5,0);
	}
}
else 
if(dead)
{
	image_alpha -= 0.01;
	image_angle +=5;
}


value = wave(0,speed/6,3,0.25);
//_time += speed / room_speed;