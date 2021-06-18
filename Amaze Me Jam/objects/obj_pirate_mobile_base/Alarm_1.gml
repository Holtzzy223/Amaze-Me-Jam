/// @description Spawn Pirate Ships

if(instance_number(par_enemy)<20)
{
	instance_create_layer(x+irandom_range(-sprite_width,sprite_width),y+irandom_range(-sprite_height,sprite_height),"Instances",choose(obj_pirate_raider,obj_hunter_seeker,obj_magnetic_mine));
}

alarm_set(1,600)
