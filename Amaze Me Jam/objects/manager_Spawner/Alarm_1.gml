/// @description spawn Enemies

// You can write your code in this editor
enemy_spawn_count = random_range(6,10);
var child = choose(obj_hunter_seeker,obj_pirate_raider,obj_magnetic_mine)
if(instance_number(child)<12)
{
	spawn_object_at_camera_bounds(child,enemy_spawn_count,"Instances",64);
}
alarm_set(1,150);