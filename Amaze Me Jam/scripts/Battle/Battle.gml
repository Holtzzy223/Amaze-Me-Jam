// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function target_in_range(_target,_range)
{
	if(point_distance(x,y,_target.x,_target.y)<=_range)
	{
		
		return true;
	}
	else
	{
		return false;
	}

}

function attack_target(_target,_range,_bullet_timer,_alarm_ind,_alarm_frames)
{
	if(target_in_range(_target,_range))
	{
		var _angle = point_direction(x,y,_target.x,_target.y);
		_angle = image_angle  - angle_difference(image_angle,_angle);
		image_angle = lerp(image_angle,_angle,0.1); 
		direction = image_angle;
		var bullet_timer = _bullet_timer;
		bullet_timer--;
		if(bullet_timer <=0)
		{
			spawn_projectile(obj_player_bullet,direction,3,faction,snd_pewpew);
			bullet_timer = _bullet_timer;
		}
	}
	else
	{
		alarm_set(_alarm_ind,_alarm_frames);
	}
}