/// @description spawn asteroids

// You can write your code in this editor
asteroid_spawn_count = irandom_range(2,5)
if(instance_number(obj_asteroid<24))
{
 spawn_object_at_camera_bounds(obj_asteroid,asteroid_spawn_count,"Instances",64);
}
alarm_set(0,90)