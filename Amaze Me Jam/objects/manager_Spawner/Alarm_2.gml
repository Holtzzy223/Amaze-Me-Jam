/// @description spawn brute
// You can write your code in this editor
var spawn = choose(true, false)
if(spawn == true)
{
	enemy_spawn_count = irandom_range(1,3);
	var child = choose(obj_pirate_brute,obj_pirate_bee_cruiser);
	if(instance_number(child) < 12)
	{
		spawn_object_at_camera_bounds(child,enemy_spawn_count,"Instances_controllers",64);
	}
	
}
alarm_set(2,600);