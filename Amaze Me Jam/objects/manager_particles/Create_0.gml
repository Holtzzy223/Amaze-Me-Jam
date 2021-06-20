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
	part_type_life(particle_exhaust_player,10,20);
	
	#endregion
	
	#region Enemy Ships
	//Raider
	particle_exhaust_enemy_raider = part_type_create();
	part_type_sprite(particle_exhaust_enemy_raider,spr_raider_exhaust,false,false,false);
	part_type_size(particle_exhaust_enemy_raider,0.4,0.4,0.05,0);
	part_type_orientation(particle_exhaust_enemy_raider,0,180,0,0,1);
	part_type_color3(particle_exhaust_enemy_raider,c_purple,c_red,c_fuchsia);
	part_type_alpha3(particle_exhaust_enemy_raider,0.8,0.5,0);
	part_type_life(particle_exhaust_enemy_raider,5,10);
	
	#endregion
	#region	Ally Ships
	
	#endregion
	#region Neutral Ships
	#endregion

#endregion

#region Debris

//Astroid
particle_debris_astroid = part_type_create();
part_type_sprite(particle_debris_astroid,spr_debris_astroids,false,false,true);
part_type_size(particle_debris_astroid,1,1,-0.05,0);
part_type_orientation(particle_debris_astroid,0,359,1,0,false);
part_type_direction(particle_debris_astroid,0,359,0,false);
part_type_speed(particle_debris_astroid,5,6,-0.02,0);
part_type_color3(particle_debris_astroid,c_purple,c_maroon,c_red);
part_type_alpha3(particle_debris_astroid,0.8,0.6,0.15);
part_type_life(particle_debris_astroid,120,600);

//Ships
particle_debris_ship = part_type_create();
part_type_sprite(particle_debris_ship,spr_debris_ship,false,false,true);
part_type_size(particle_debris_ship,1,1,-0.05,0);
part_type_orientation(particle_debris_ship,0,359,1,0,false);
part_type_direction(particle_debris_ship,0,359,0,false);
part_type_speed(particle_debris_ship,6,9,-0.05,0);
part_type_color3(particle_debris_ship,c_red,c_green,c_red);
part_type_alpha3(particle_debris_ship,0.7,0.5,0.1);
part_type_life(particle_debris_ship,120,600);

#endregion

#region Weapons
//lasers
particle_laser_impact = part_type_create();
part_type_shape(particle_laser_impact,pt_shape_pixel)
part_type_size(particle_laser_impact,1,3,0.1,0);
part_type_orientation(particle_laser_impact,0,359,1,0,false);
part_type_direction(particle_laser_impact,0,359,0,false);
part_type_speed(particle_laser_impact,6,9,-0.05,0);
part_type_alpha3(particle_laser_impact,0.7,0.5,0.1);
part_type_life(particle_laser_impact,10,20);
//missiles

#endregion
