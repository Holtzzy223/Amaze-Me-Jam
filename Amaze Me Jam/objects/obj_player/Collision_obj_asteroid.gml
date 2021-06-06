/// @description Insert description here
// You can write your code in this editor
if(!invincible)
{
	motion_set(-direction+random_range(-5,5),1);
	
	if(!dead)
	{
		repeat(25)
		{
			
			instance_create_depth(x,y,depth,obj_debris);
		}
		dead = true;
	}
	alarm_set(0,120);
}