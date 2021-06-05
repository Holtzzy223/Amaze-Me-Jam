/// @description Insert description here
// You can write your code in this editor
add = 0.4;
uni_add = shader_get_uniform(sh_bloom, "add");
uni_time = shader_get_uniform(sh_bloom, "time");
direction = irandom(360);
speed = 1;