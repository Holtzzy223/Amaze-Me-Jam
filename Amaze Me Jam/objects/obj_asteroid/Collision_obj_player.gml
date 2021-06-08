/// @description Insert description here
// You can write your code in this editor
if(!obj_player.dead)
{
    hp = 0;
	motion_set(-direction,1);
}
switch(sprite_index)
{
	case spr_asteroid_large:
		other.damage_player(5);
	break;
	case spr_asteroid_med:
		other.damage_player(3);
	break;
	case spr_asteroid_small:
		other.damage_player(2);
	break;
	case spr_asteroid_tiny:
		other.damage_player(1);
	break;
}