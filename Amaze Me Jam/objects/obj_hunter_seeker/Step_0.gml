/// @description Insert description here
// You can write your code in this editor

event_inherited();
if(!dead)
{
	if(instance_exists(_target))
	{
		if(target_in_range(_target,_range*3))speed += 0.03;
		if(target_in_range(_target,_range))
		{
			var _angle = point_direction(x,y,_target.x,_target.y);
			_angle = image_angle  - angle_difference(image_angle,_angle);
			image_angle = lerp(image_angle,_angle,0.1); 
			direction = image_angle;
			
			speed = clamp(speed,0,15);
			bullet_timer--;
			if(bullet_timer <=0)
			{
				spawn_projectile(obj_player_bullet,direction,10+speed,faction,snd_pewpew);
				bullet_timer = 60;
			}
		}
		else
		{
			alarm_set(1,90);
		}
	}
}