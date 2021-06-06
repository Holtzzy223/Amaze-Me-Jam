/// @description Camera Setup
// You can write your code in this editor

//Camera
global.cam_x = 0;
global.cam_y = 0;
target = obj_player;
global.camera_width = 480;
global.camera_height = 270;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0],global.camera_width,global.camera_height);

//Display
display_scale_factor = 2;
_display_width = global.camera_width *display_scale_factor;
_display_height = global.camera_height *display_scale_factor;


window_set_size(_display_width,_display_height);
surface_resize(application_surface,_display_width,_display_height);
alarm_set(0,1);