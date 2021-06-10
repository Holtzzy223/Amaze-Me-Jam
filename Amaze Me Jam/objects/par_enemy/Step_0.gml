/// @description Insert description here
// You can write your code in this editor
_time += 1 / room_speed;
value = wave(0,1+_time,3,0.25);
if(dead)
{
	global.camera_shake = 10;
	image_alpha -= 0.01;
	image_angle +=5;
}
if(flash)
{
	image_blend = c_white;
	image_alpha = wave(0.25,1,0.5,.25);
}
if(image_alpha<=0)
{
	instance_destroy(id);
}
