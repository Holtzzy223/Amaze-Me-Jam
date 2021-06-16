// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function item() constructor
{
	name = "";
	description = "";
	value = 0;
}

function blueprint() : item() constructor
{
	enum BP_TYPE
	{
		SHIP,
		WEAPON,
		HULL,
		ENGINE
	}
	type = -1;
	
	
}

function upgrade() : item() constructor
{
	hp_add = 0;
	energy_add = 0;
	base_speed_add = 0;
	max_speed_add = 0;
}

function resource() : item() constructor
{
	rarity = 0;
}