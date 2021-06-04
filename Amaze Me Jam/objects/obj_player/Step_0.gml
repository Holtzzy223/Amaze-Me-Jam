/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_left))
{
	image_angle+=5;
}
if(keyboard_check(vk_right))
{
	image_angle-=5;
}
if(keyboard_check(vk_up))
{
	motion_add(image_angle,0.01);
	//part_emitter_stream()
	//part_emitter_burst(thruster_system,thruster_emitter,thruster_particle,30+random(60));
	
}
if(keyboard_check_pressed(vk_space))
{
	var bullet = instance_create_depth(x+lengthdir_x(sprite_width,image_angle),y+lengthdir_y(sprite_height,image_angle),depth+1,obj_player_bullet);
	with(bullet)
	{
		motion_set(obj_player.image_angle,5);
	}
}
