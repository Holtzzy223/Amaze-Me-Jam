/// @description 
var _pushspd = 8;
var _col = instance_place(x,y,manager_faction_ally);
if(_col)
{
    var _dist = sign(x - _col.x) * _pushspd;
    if(!place_meeting(x + _dist, y, par_enemy))
        x += _dist;
}
if(instance_exists(_target))
{
	if(target_in_range(_target,_range))
	{
		speed = 10;
		var _angle = point_direction(x,y,_target.x,_target.y);
		_angle = image_angle  - angle_difference(image_angle,_angle);
		image_angle = lerp(image_angle,_angle,0.1); 
		direction = image_angle;
		
		if(point_distance(x,y,_target.x,_target.y)<_range/4)
		{
			speed -= 0.5;
			speed = clamp(speed,3,8);
		}
	}
	else
	{
		alarm_set(1,120);
	}
}
