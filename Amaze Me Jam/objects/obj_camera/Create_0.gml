/// @description Insert description here
// You can write your code in this editor
parallax_layer_far =  layer_get_id("Parallax_far");
parallax_layer_mid =  layer_get_id("Parallax_mid");
parallax_layer_close =  layer_get_id("Parallax_close");
parallax_layer_overlay =  layer_get_id("Parallax_overlay");
application_surface_enable(false);
view_surf = -1;
//Shaderz

show_debug_overlay(true);
//Bloom
value = 0.75;
bloom_handler = shader_get_uniform(sh_bloom,"intensity");
//camera cull
inst_lay_id = layer_get_id("Instances");
cull_pad = 256;
//shake
global.camera_shake = 0;