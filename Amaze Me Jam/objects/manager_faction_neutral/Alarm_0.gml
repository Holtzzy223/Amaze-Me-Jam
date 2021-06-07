/// @description spawn asteroids

// You can write your code in this editor
spawn_count = random_range(3,6);
spawn_object_at_camera_bounds(obj_asteroid,spawn_count,64);
alarm_set(0,200)