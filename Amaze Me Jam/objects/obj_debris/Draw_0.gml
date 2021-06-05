/// @description Insert description here
// You can write your code in this editor
shader_set(sh_bloom);

shader_set_uniform_f(uni_add, add);

shader_set_uniform_f(uni_time, current_time / 2000);

//fauxton_sprite_set(x,y,depth,0,0,0,1,1,1,true);
draw_self();
shader_reset();