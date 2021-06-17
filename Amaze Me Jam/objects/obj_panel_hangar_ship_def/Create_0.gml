/// @description 

// Inherit the parent event
event_inherited();
panel_title = "Standard Corvette";
panel_tag = "Agile Hunter";
panel_desc = "Standard Corvette Class Ship \n Outfitted with standard cannons\n and a powerful beam wepaon.";
ship_health = "Health: "+string(obj_player.max_hp);
ship_energy = "Energy: "+string(obj_player.max_energy);
ship_speed  = "Max Speed: "+string(obj_player.max_speed)+" AU/H";
ship_shield = "Shields: 100";
ship_primary_weapon = "Main Weapon: Ballistic Cannon";
ship_auxilliary_weapon = "Aux Weapon: Photon Wave Beam";
ship_sprite = obj_player.sprite_index;