/// @description Insert description here
// You can write your code in this editor
if(instance_exists(target))
{
	
	target = instance_nearest(x,y,par_enemy);
	if(target_in_range(target,800))
	{
		image_angle = direction
		move_towards_point(target.x,target.y,speed);
	}
}