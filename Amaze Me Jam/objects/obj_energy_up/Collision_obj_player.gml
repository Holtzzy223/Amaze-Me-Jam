/// @description 
obj_player.energy += 50;
part_particles_create(manager_particles.particle_system,x,y,manager_particles.particle_debris_astroid,10);
instance_destroy(id);