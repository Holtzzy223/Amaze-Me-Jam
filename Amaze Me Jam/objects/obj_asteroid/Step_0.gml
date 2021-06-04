/// @description Insert description here
// You can write your code in this editor
image_angle+=rotation_dir;
move_wrap(true,true,sprite_width/2);
if(hp <=0)
{
	instance_destroy(id);
}