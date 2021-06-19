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
		speed =lerp(speed,_target.speed,0.1);
		speed = clamp(speed, 0,_target.max_speed - 3);
		var _angle = point_direction(x,y,_target.xprevious,_target.yprevious);
		_angle = image_angle  - angle_difference(image_angle,_angle);
		image_angle = lerp(image_angle,_angle,0.1); 
		direction = image_angle;
		_target.path_target = obj_station;
		if(point_distance(x,y,_target.x,_target.y)<_range/4&&!_col)
		{
			speed -= 1;
			speed = clamp(speed,3,_target.speed*0.5);
		}
	}
	else
	{
		_target.path_target = id;
		alarm_set(1,120);
	}
}
if(speed>0)
{
	thrust_counter++;
	if(thrust_counter >=4)
	{
		thrust_counter = 0 ;
		if(speed >= 2)
		{
			part_particles_create(manager_particles.particle_system,x-lengthdir_x(sprite_width*0.4,image_angle), y-lengthdir_y(sprite_height/2,image_angle),manager_particles.particle_exhaust_player,1);
		}
	}
}