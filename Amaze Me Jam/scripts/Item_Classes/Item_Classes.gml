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



function resource() : item() constructor
{
	rarity = 0;
}