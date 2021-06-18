
#region Blueprints

function ship_blueprint() : blueprint() constructor
{
	type  = BP_TYPE.SHIP
	ship_type = "";
	ship_tag = "";
	ship_desc = "";
	ship_speed = 0;
	ship_health = 0;
	ship_energy = 0;
	ship_shield = 0;
	ship_sprite = noone;
	ship_primary_weapon = "";
	ship_auxilliary_weapon = "";
	static swap_ship = function(target)
	{
		target.sprite_index = self.ship_sprite;
		target.max_speed = self.ship_speed;
		target.max_hp = self.ship_health;
		target.hp = target.max_hp;
		target.max_energy = self.ship_energy;
		target.energy = target.max_energy;
		target.ship_bp = self;
		save_game(SAVEFILE);
	
	}
}

function weapon_blueprint() : blueprint() constructor
{
	type = BP_TYPE.WEAPON
	weapon_damage = 0;
	weapon_range = 0;
	
}

function hull_blueprint() : blueprint() constructor
{
	type = BP_TYPE.HULL
	hull_health = 0;
}

function engine_blueprint() : blueprint() constructor
{
	type = BP_TYPE.ENGINE
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

	static  add_speed_max = function()
	{
		obj_player.max_speed += self.max_speed_add;
		
	};
	static add_shield = function()
	{
		
	}
}

#endregion

#region Resources

#endregion