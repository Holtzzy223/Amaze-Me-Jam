/// @description Insert description here
// You can write your code in this editor
if(instance_exists(target))
{
	global.cam_x = target.x - (global.camera_width/2);
	global.cam_y = target.y - (global.camera_height/2);
	global.cam_x = clamp(global.cam_x,0,room_width-global.camera_width);
	global.cam_y = clamp(global.cam_y,0,room_height-global.camera_height);
}

//shake
global.cam_x+=random_range(-global.camera_shake,global.camera_shake);
global.cam_y+=random_range(-global.camera_shake,global.camera_shake);
if(global.camera_shake>0)
{
	global.camera_shake-=0.3;

}
if(global.camera_shake<0)
{
	global.camera_shake =0;
}

//culling
instance_deactivate_layer(inst_lay_id);
var cam, cleft,ctop,camw,camh;

cam = view_camera[0];
cleft = camera_get_view_x(cam);
ctop = camera_get_view_y(cam);
camh = camera_get_view_height(cam);
camw = camera_get_view_width(cam);
instance_activate_region(cleft-cull_pad,ctop-cull_pad,camw+cull_pad,camh+cull_pad,true);
