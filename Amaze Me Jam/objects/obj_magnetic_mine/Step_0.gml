/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(instance_exists(_target))
	{
		if(target_in_range(_target,_range))
		{
			speed += 0.06;
			var _angle = point_direction(x,y,_target.x,_target.y);
			_angle = image_angle  - angle_difference(image_angle,_angle);
			image_angle = lerp(image_angle,_angle,0.1); 
			direction = image_angle;
			
			speed = clamp(speed,0,15);
		}
		else
		{
			speed =0;
		}
}
if(image_index>image_number-1)
{
	instance_destroy(id);
}

