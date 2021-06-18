/// @description 
/// @description Insert description here
// You can write your code in this editor
_time += 0.5 / room_speed;
value = wave(0,0.5+_time,2,0.25);
if(global.game_pause) exit;
image_angle +=image_rot;
if(dead)
{
	global.camera_shake = 3;
	image_alpha -= 0.1;
	
}

if(image_alpha<=0)
{
	
	instance_destroy(id);
}


