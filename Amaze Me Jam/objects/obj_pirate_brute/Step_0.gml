/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(!dead)
{
	if(instance_exists(_target))
	{
		if(target_in_range(_target,_chase_range))
		{
			var _angle = point_direction(x,y,_target.x,_target.y);
			_angle = image_angle  - angle_difference(image_angle,_angle);
			image_angle = lerp(image_angle,_angle,0.1); 
			direction = image_angle;
			if(target_in_range(_target,_shoot_range))
			{
				
				
				
				bullet_timer--;
				if(bullet_timer <=0)
				{
					spawn_projectile(obj_magnetic_mine,direction,10+speed,faction,snd_pewpew);
					bullet_timer = 100;
				}
				if(point_distance(x,y,_target.x,_target.y)<_chase_range/3)
				{
					speed -= 0.065;
					speed = clamp(speed,0,12);
				}
				
			}
			else
			{
				alarm_set(1,200);
			}
		}
	}
	
}