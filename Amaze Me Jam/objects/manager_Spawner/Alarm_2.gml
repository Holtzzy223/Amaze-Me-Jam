/// @description Insert description here
// You can write your code in this editor
var spawn = choose(true, false)
if(spawn == true)
{
	enemy_spawn_count = random_range(1,3);
	var child = obj_pirate_brute;
	if(instance_number(child) < 6)
	{
		spawn_object_at_camera_bounds(child,enemy_spawn_count,"Instances_controllers",64);
	}
	
}
alarm_set(2,600);