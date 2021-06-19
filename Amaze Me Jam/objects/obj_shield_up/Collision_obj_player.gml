/// @description 
with(obj_player)
{
	shield +=lerp(shield,max_shield,1);
}
part_particles_create(manager_particles.particle_system,x,y,manager_particles.particle_debris_astroid,10);
instance_destroy(id);