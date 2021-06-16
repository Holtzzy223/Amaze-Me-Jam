// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function item() constructor
{
	item_name = "";
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
	bp_type = -1;
	
	
}



function resource() : item() constructor
{
	enum RARITY
	{
		COMMON,
		UNCOMMON,
		RARE,
	}
	rarity = 0;
}