/// @description Insert description here
// You can write your code in this editor
shader_set(sh_bloom);
shader_set_uniform_f(bloom_handler,value);
draw_self();
shader_reset();