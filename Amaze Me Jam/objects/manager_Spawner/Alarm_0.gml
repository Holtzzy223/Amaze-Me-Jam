/// @description spawn asteroids

// You can write your code in this editor
asteroid_spawn_count = random_range(5,8);
spawn_object_at_camera_bounds(obj_asteroid,asteroid_spawn_count,64);
alarm_set(0,90)