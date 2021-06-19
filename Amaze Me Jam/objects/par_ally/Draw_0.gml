/// @description Insert description here
// You can write your code in this editor
	draw_set_alpha(wave(0.1,0.2,5,1))
	draw_circle_color(x,y,_range,c_aqua,c_blue,false);
	draw_set_alpha(1)
	shader_set(sh_bloom);
	shader_set_uniform_f(bloom_handler,value);
	draw_self();
	shader_reset();
