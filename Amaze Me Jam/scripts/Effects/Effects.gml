// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function parallax_layer(layer_id,move_factor_x,move_factor_y)
{
	layer_x(layer_id,global.cam_x*move_factor_x);
	layer_y(layer_id,global.cam_y*move_factor_y)
}