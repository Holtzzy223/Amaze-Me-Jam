/// @description 
var _mouse_gui_x = device_mouse_x_to_gui(0);
var _mouse_gui_y = device_mouse_y_to_gui(0);

if (position_meeting(_mouse_gui_x, _mouse_gui_y, id)) {
	image_alpha = 0.8;
	
	image_yscale = lerp(image_yscale, init_scale_y + (extra_height_on_hover / sprite_get_height(sprite_index)), 0.1);
}
else {
	image_alpha = 1;
	
	image_yscale = lerp(image_yscale, init_scale_y, 0.1);
}