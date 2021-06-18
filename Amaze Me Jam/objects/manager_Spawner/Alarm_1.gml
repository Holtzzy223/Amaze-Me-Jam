/// @description spawn Enemies

// You can write your code in this editor
enemy_spawn_count = irandom_range(1,3);
var child = choose(obj_hunter_seeker,obj_pirate_raider,obj_magnetic_mine)
if(instance_number(child)<8)
{
	spawn_object_at_camera_bounds(child,enemy_spawn_count,"Instances",64);
}
alarm_set(1,300);