// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//function cull_inactive_instances(_object,_padding)
//{	
//	with(_object)
//	{
//		var _hpad = _padding;
//		var _vpad = _padding;
//		var _bounds_left = x - sprite_xoffset - _hpad;
//		var _bounds_top = y - sprite_yoffset - _vpad;
//		var _bounds_right = _bounds_left + sprite_width +(_hpad*2);
//		var _bounds_bottom = _bounds_top + sprite_height +(_vpad*2);
//		var cull = !((_bounds_left<view)&&()&&()&&())
//	}
//
//}
function cull_out_of_view(layer_id,_camera,padding,rect_scale)
{
	instance_deactivate_layer(layer_id);
	var cam, cleft,ctop,camw,camh;
	
	cam = _camera;
	cleft = camera_get_view_x(cam);
	ctop = camera_get_view_y(cam);
	camh = camera_get_view_height(cam);
	camw = camera_get_view_width(cam);
	instance_activate_region(cleft-padding,ctop-(padding*rect_scale),camw+padding,camh+(padding*rect_scale),true);
}