/// @description 

// Inherit the parent event
event_inherited();
ship_sprite = spr_player_ship_dart;
ship = new ship_blueprint();
ship.ship_type = "Republic Dart"
ship.ship_speed = 17;
ship.ship_health = 8;
ship.ship_energy = 150;
ship.ship_sprite = ship_sprite;
ship.ship_tag = "Speed is king...";
ship.ship_desc = "Allied Republic Dart\n Agile... Fast... Deadly\n Outfitted with standard cannons\n and a powerful beam weapon.";
panel_title = ship.ship_type;
panel_tag = ship.ship_tag ;
panel_desc = ship.ship_desc;  
ship_health = "Health: "+string(ship.ship_health);
ship_energy = "Energy: "+string(ship.ship_energy);
ship_speed  = "Max Speed: "+string(ship.ship_speed)+" AU/H";
ship_shield = "Shields: 100";
ship_primary_weapon = "Main Weapon: Ballistic Cannon";
ship_auxilliary_weapon = "Aux Weapon: Photon Wave Beam";
can_access = false;
padding = 32;
if(obj_player.allies_saved >= 3)
{
	can_access = true;
	image_blend = c_white
}else
{
	image_blend = c_dkgray;
}
