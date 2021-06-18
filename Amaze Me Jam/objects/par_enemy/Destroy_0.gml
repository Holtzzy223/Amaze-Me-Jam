/// @description Insert description here
// You can write your code in this editor
part_particles_create(manager_particles.particle_system,x, y,manager_particles.particle_debris_ship,15);

var _chance = irandom_range(0,9);

if(_chance<=5)
{
	//drop energy
	instance_create_layer(x,y,"Instances",obj_energy_up);	
}
if(_chance>5 && _chance<=7)
{
	instance_create_layer(x,y,"Instances",obj_energy_up);
	instance_create_layer(x+random_range(-8,8),y+random_range(-16,16),"Instances",obj_health);
}
if(_chance>7 &&_chance<=9)
{
	instance_create_layer(x,y,"Instances",obj_shield_up);
	instance_create_layer(x+random_range(-8,8),y+random_range(-16,16),"Instances",obj_health);
}

if(instance_exists(obj_player))
{
	if(obj_player.current_mission != noone && obj_player.current_mission._status = STATUS.ACTIVE && obj_player.current_mission._type = TYPE.KILL)
	{
		if(enemy_name == object_get_name(obj_player.current_mission._kill_target))
		{
			global.mission_kills++;
			if(global.mission_kills >= obj_player.current_mission._kill_amount)
			{
				obj_player.current_mission.complete_mission();
				global.mission_kills = 0;
			}
		}
	}
}