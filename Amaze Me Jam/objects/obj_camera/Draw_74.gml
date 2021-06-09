/// @description Insert description here
// You can write your code in this editor
if (surface_exists(view_surf)) 
{
	shader_set(sh_bloom);
	shader_set_uniform_f(bloom_handler,value);	
    draw_surface_part(view_surf, frac(global.cam_x), frac(global.cam_y), global.camera_width, global.camera_height, 0, 0);
    shader_reset();
	//draw_surface(view_surf, -frac(x), -frac(y));
}