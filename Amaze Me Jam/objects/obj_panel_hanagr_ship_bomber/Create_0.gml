/// @description 

// Inherit the parent event
event_inherited();
ship_sprite = spr_ship_bomber;
ship = new ship_blueprint();
ship.ship_type = "Consensus Bomber"
ship.ship_speed = 10;
ship.ship_health = 20;
ship.ship_energy = 250;
ship.ship_shield = 100;
ship.ship_sprite = ship_sprite;
ship.ship_tag = "Space Tank.";
ship.ship_desc = "Allied Consensus Bomber \n Slower, but able to take\n most things thrown at it.";
panel_title = ship.ship_type;
panel_tag = ship.ship_tag ;
panel_desc = ship.ship_desc;  
ship_health = "Health: "+string(ship.ship_health);
ship_energy = "Energy: "+string(ship.ship_energy);
ship_speed  = "Max Speed: "+string(ship.ship_speed)+" AU/H";
ship_shield = "Shields: "+string(ship.ship_shield);
ship_primary_weapon = "Main Weapon: Ballistic Cannon";
ship_auxilliary_weapon = "Aux Weapon: Photon Wave Beam";
can_access = false;
padding = 28;
allies_needed = 10;
if(obj_player.allies_saved >= allies_needed)
{
	can_access = true;
	image_blend = c_white
}else
{
	image_blend = c_dkgray;
}
