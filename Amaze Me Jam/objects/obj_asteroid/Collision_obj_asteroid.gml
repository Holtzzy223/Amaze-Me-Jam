/// @description Insert description here
// You can write your code in this editor
speed = 0;
if(sprite_index != spr_asteroid_tiny)
{
	hp-=0.005;
}
image_blend = random_range(c_yellow,c_red);
deflection_dir = -other.direction;
alarm_set(0,1);