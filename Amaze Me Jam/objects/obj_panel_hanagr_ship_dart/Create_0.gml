/// @description 

// Inherit the parent event
event_inherited();
ship_sprite = spr_player_ship_dart;
ship = new ship_blueprint();
ship.ship_type = "Republic Dart"
ship.ship_speed = 15;
ship.ship_health = 12;
ship.ship_energy = 150;
ship.ship_sprite = ship_sprite;
panel_title = string(ship.ship_type);
panel_tag = "Speed is king...";
panel_desc = "Allied Republic Dart\n Agile... Fast... Deadly\n Outfitted with standard cannons\n and a powerful beam weapon.";
ship_health = "Health: "+string(ship.ship_health);
ship_energy = "Energy: "+string(ship.ship_energy);
ship_speed  = "Max Speed: "+string(ship.ship_speed)+" AU/H";
ship_shield = "Shields: 100";
ship_primary_weapon = "Main Weapon: Ballistic Cannon";
ship_auxilliary_weapon = "Aux Weapon: Photon Wave Beam";

padding = 28;

