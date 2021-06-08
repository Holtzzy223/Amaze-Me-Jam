/// @description Insert description here
// You can write your code in this editor
image_alpha -= 0.01;
if(image_alpha<=0)
{
	instance_destroy(id);
}
image_blend = wave(c_white,c_blue,1,0);