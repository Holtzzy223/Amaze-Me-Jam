/// @description 
obj_player.energy =lerp(obj_player.energy,obj_player.max_energy,0.1);
part_particles_create(manager_particles.particle_system,x,y,manager_particles.particle_debris_astroid,10);
instance_destroy(id);