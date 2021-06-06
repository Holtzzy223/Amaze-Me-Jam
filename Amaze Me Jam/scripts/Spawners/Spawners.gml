// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_object_at_camera_bounds(object_to_spawn,spawn_count,pad)
{
	var xx,yy;
	
	
	repeat(spawn_count)
	{
		xx = random_range(0,room_width);
		yy = random_range(0,room_height);
		while(point_in_rectangle(xx,yy,global.cam_x-pad,global.cam_y-pad,
								global.cam_x+global.camera_width+pad,
								global.cam_y+global.camera_height+pad))
		{
			xx = random_range(0,room_width);
			yy = random_range(0,room_height);
		}
		instance_create_layer(xx,yy,"Instances",object_to_spawn);
	}
}