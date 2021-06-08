/// @description Insert description here
// You can write your code in this editor
enemy_spawn_count = random_range(6,10);
var spawn = choose(obj_hunter_seeker,obj_pirate_raider,obj_magnetic_mine,obj_pirate_brute);
spawn_object_at_camera_bounds(spawn,enemy_spawn_count,64);
alarm_set(1,150);