/// @description 
speed = 2;
direction = random(360);
// Inherit the parent event
event_inherited();
_part_type = manager_particles.particle_debris_astroid;
image_blend = choose(c_ltgray,c_silver,c_yellow,c_purple,c_fuchsia)
_part_color = image_blend;
switch(image_blend)
{
	//iron
	case c_dkgray:
		value = 50; 
	break;
	//silver
	case c_silver: 
		value = 100;
	break;
	//gold
	case c_yellow: 
		value = 250;
	break;
	//iridium
	case c_purple: 
		value = 500;
	break;
	//tritium
	case c_fuchsia: 
		value = 1000;
	break;
}