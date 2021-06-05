/// @description Insert description here
// You can write your code in this editor
with(other)
{
	
	if(sprite_index != 3)
	{
		hp-=0.005;
	}
	image_blend = random_range(c_yellow,c_red);
	deflection_dir = other.direction;
	
	alarm_set(0,1);
}

with(obj_player)
{
	speed = 0;
	motion_add(-direction,0.5);
}