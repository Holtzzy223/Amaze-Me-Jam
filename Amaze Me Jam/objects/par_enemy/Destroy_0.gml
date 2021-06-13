/// @description Insert description here
// You can write your code in this editor
part_particles_create(manager_particles.particle_system,x, y,manager_particles.particle_debris_ship,15);

var _chance = irandom_range(0,10);

if(_chance<=4)
{
	//drop energy
	instance_create_layer(x,y,"Instances",obj_energy_up);
}