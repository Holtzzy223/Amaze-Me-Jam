/// @description spawn mobile base
var spawn = choose(true, false)
if(spawn == true)
{
	enemy_spawn_count = irandom_range(1,3);
	var child = obj_pirate_mobile_base;

	spawn_object_at_camera_bounds(child,enemy_spawn_count,"Instances",64);

	
}
alarm_set(4,1800);