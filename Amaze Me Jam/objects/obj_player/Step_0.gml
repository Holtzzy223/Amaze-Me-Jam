/// @description Insert description here
// You can write your code in this editor
if(!global.game_pause)
{
	if(!dead)
	{
		if(keyboard_check(vk_left)||keyboard_check(ord("A")))
		{
			image_angle =lerp(image_angle,image_angle+input_magnitude,0.2);;
		}
		if(keyboard_check(vk_right))||keyboard_check(ord("D"))
		{
			image_angle=lerp(image_angle,image_angle-input_magnitude,0.2);;
		}
		if(keyboard_check(vk_up))||keyboard_check(ord("W"))
		{
			var thrust = 0.25;
			speed = clamp(speed,0,max_speed);
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
		
	
	
		
		if(keyboard_check(vk_space))
		{
			
			bullet_timer++
			if(obj_player.speed >=1)
			{
				bullet_speed =18+obj_player.speed;		
			}
			else
			{
				bullet_speed = 18;
			}
			//spawn inital bullet
			if(bullet_timer >=fire_thresh)
			{
				bullet_timer = 0;
	
				spawn_projectile(obj_player_bullet,image_angle+random_range(-2,2),bullet_speed,faction,snd_pewpew);
			}
			
		}
		if(keyboard_check_released(vk_space))
		{
			bullet_timer = fire_thresh;
		}
		//LASERS
		energy = clamp(energy,0,max_energy);
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
		part_particles_create_color(manager_particles.particle_system,x, y,manager_particles.particle_debris_ship,image_blend,1);	
	}
	
	
	value = wave(0,speed/6,3,0.25);
	//_time += speed / room_speed;
}