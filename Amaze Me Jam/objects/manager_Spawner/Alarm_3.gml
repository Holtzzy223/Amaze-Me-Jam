/// @description spawn pirate station
var spawn = choose(true, false)
if(spawn == true)
{
	enemy_spawn_count = irandom_range(1,2);
	var child = obj_pirate_station

	spawn_object_at_camera_bounds(child,enemy_spawn_count,"Instances",500);
	
	
}
alarm_set(3,7200);