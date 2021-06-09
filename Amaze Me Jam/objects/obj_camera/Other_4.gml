/// @description Camera Setup
// You can write your code in this editor

//Camera
global.cam_x = 0;
global.cam_y = 0;
target = obj_player;
global.camera_width = 480*3;
global.camera_height = 270*3;

view_enabled = true;
view_visible[0] = true;
application_surface_enable(false);

camera_set_view_size(view_camera[0],global.camera_width+3,global.camera_height+3);
display_set_gui_size(global.camera_width, global.camera_height);
view_surf = -1;

//Display

display_scale_factor = 2;
_display_width =  floor(global.camera_width * display_scale_factor);
_display_height = floor(global.camera_height * display_scale_factor);
//bounds
//global.camera_left = ;
//global.camera_right;
//global.camera_top =
//global.camera_bottom;

window_set_size(_display_width,_display_height);

alarm_set(0,1);