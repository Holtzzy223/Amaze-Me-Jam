// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function corvette_ship() : ship_blueprint() constructor
{
	ship_type = "Standard Corvette"
	ship_tag = "Agile Hunter";
	ship_desc = "Standard Corvette Class Ship \n Outfitted with standard cannons\n and a powerful beam wepaon.";
	ship_speed = 12;
	ship_health = 10;
	ship_shield = 100;
	ship_energy = 200;
	ship_sprite = spr_cave_ship;
	ship_primary_weapon = "Main Weapon: Ballistic Cannon";
	ship_auxilliary_weapon = "Aux Weapon: Photon Wave Beam";
}