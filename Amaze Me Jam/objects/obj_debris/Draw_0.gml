/// @description Insert description here
// You can write your code in this editor
shader_set(sh_bloom);


shader_set_uniform_f(bloom_handler,value);

//fauxton_sprite_set(x,y,depth,0,0,0,1,1,1,true);
draw_self();
shader_reset();