/// @description 
event_inherited();
while(obj_player.hp<obj_player.max_hp)
{
	obj_player.hp = lerp(obj_player.hp,obj_player.max_hp,0.01);
}
part_particles_create(manager_particles.particle_system,x,y,manager_particles.particle_debris_astroid,10);
