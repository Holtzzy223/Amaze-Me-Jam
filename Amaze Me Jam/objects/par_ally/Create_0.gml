/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
//Follow

_target = obj_player;
_range = 600;

thrust_counter = 0;
//Bloom
value = 0.66;
bloom_handler = shader_get_uniform(sh_bloom,"intensity");
follow_active = false;