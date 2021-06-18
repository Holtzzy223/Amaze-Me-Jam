/// @description 
if(instance_number(par_enemy)<20)
{
	repeat(2)
	{
		instance_create_layer(x+irandom_range(-sprite_width,sprite_width),y+irandom_range(-sprite_height,sprite_height),"Instances",choose(obj_pirate_raider,obj_hunter_seeker,obj_pirate_brute));
	}
}

alarm_set(1,irandom_range(600,900));