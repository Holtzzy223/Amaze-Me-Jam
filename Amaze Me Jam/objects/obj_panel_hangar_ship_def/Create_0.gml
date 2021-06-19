/// @description 

// Inherit the parent event
event_inherited();
ship = new corvette_ship();
panel_title = ship.ship_type;
panel_tag = ship.ship_tag;
panel_desc = ship.ship_desc;
ship_health = "Health: "+string(ship.ship_health);
ship_energy = "Energy: "+string(ship.ship_energy);
ship_speed  = "Max Speed: "+string(ship.ship_speed)+" AU/H";
if(obj_player.has_shield)
{
	ship_shield = "Shields: "+string(ship.ship_shield)
}else
{
	ship_shield = "";
}
ship_primary_weapon = ship.ship_primary_weapon;
ship_auxilliary_weapon = ship.ship_auxilliary_weapon;
ship_sprite = spr_cave_ship;
padding = 32