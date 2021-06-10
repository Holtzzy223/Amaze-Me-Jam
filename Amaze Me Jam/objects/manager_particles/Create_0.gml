/// @description Init System
// You can write your code in this editor

#region System

particle_system = part_system_create();

#endregion

#region Exhaust

particle_exhaust = part_type_create();
part_type_sprite(particle_exhaust,spr_player_exhaust,false,false,false);
part_type_size(particle_exhaust,0.4,0.4,0.05,0);
part_type_orientation(particle_exhaust,0,180,0,0,1)
part_type_color3(particle_exhaust,c_yellow,c_green,c_aqua);
part_type_alpha3(particle_exhaust,1,0.75,0);
part_type_life(particle_exhaust,5,15)

#endregion

#region Debris

#endregion

#region Weapons


#endregion
