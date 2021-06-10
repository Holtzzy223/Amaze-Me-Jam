/// @description Init System
// You can write your code in this editor

#region System

particle_system = part_system_create();

#endregion

#region Exhaust
	#region Player Ships
		
	//Player Base Ship
	particle_exhaust_player = part_type_create();
	part_type_sprite(particle_exhaust_player,spr_player_exhaust,false,false,false);
	part_type_size(particle_exhaust_player,0.4,0.4,0.05,0);
	part_type_orientation(particle_exhaust_player,0,180,0,0,1);
	part_type_color3(particle_exhaust_player,c_yellow,c_green,c_aqua);
	part_type_alpha3(particle_exhaust_player,0.8,0.5,0);
	part_type_life(particle_exhaust_player,3,10);
	
	#endregion
	
	#region Enemy Ships
	//Raider
	particle_exhaust_enemy_raider = part_type_create();
	part_type_sprite(particle_exhaust_enemy_raider,spr_raider_exhaust,false,false,false);
	part_type_size(particle_exhaust_enemy_raider,0.4,0.4,0.05,0);
	part_type_orientation(particle_exhaust_enemy_raider,0,180,0,0,1);
	part_type_color3(particle_exhaust_enemy_raider,c_purple,c_red,c_fuchsia);
	part_type_alpha3(particle_exhaust_enemy_raider,0.8,0.5,0);
	part_type_life(particle_exhaust_enemy_raider,3,10);
	
	#endregion
	#region	Ally Ships
	
	#endregion
	#region Neutral Ships
	#endregion

#endregion

#region Debris

#endregion

#region Weapons


#endregion
