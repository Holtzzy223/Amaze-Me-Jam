/// @description Insert description here
// You can write your code in this editor
if(instance_exists(target))
{
	global.cam_x = target.x - (global.camera_width/2);
	global.cam_y = target.y - (global.camera_height/2);
	global.cam_x = clamp(global.cam_x,0,room_width-global.camera_width);
	global.cam_y = clamp(global.cam_y,0,room_height-global.camera_height);
}