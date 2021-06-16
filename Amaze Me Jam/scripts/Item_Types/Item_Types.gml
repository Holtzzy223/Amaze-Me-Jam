
#region Blueprints

function ship_blueprint() : blueprint() constructor
{
	bp_type  = BP_TYPE.SHIP
	ship_max_speed = 0;
	ship_health = 0;
	ship_energy = 0;
}

function weapon_blueprint() : blueprint() constructor
{
	bp_type = BP_TYPE.WEAPON
	weapon_damage = 0;
	weapon_range = 0;
	
}

function hull_blueprint() : blueprint() constructor
{
	bp_type = BP_TYPE.HULL
	hull_health = 0;
}

function engine_blueprint() : blueprint() constructor
{
	bp_type = BP_TYPE.ENGINE
	engine_thrust = 0;
	engine_base_speed = 0;
	engine_max_speed = 0;

}

#endregion

#region Upgrades

function upgrade() : item() constructor
{
	hp_add = 0;
	energy_add = 0;
	base_speed_add = 0;
	max_speed_add = 0;
	static  add_hp = function()
	{
		obj_player.max_hp += self.hp_add;
		obj_player.hp = obj_player.max_hp;
	
	};
	static  add_energy = function()
	{
		obj_player.max_energy += self.energy_add;
		obj_player.energy = obj_player.max_energy;
	};
	static  add_speed_base = function()
	{
		obj_player.base_speed += self.base_speed_add;
	};
	static  add_speed_max = function()
	{
		obj_player.max_speed += self.max_speed_add;
		
	};
}

#endregion

#region Resources

#endregion