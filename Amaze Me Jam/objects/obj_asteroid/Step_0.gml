/// @description Insert description here
// You can write your code in this editor
image_angle+=rotation_dir;
move_wrap(true,true,sprite_width/2);
_time += 1 / room_speed;
if(hp <=0)
{
	repeat(irandom_range(3,10))
	{
		instance_create_layer(x,y,layer,obj_ore);
	}
	switch(sprite_index)
	{
		case spr_asteroid_large:
			sprite_index = spr_asteroid_med;
			var child = instance_create_depth(x+choose(sprite_width/2,-sprite_width/2),y,depth,obj_asteroid);
			child.sprite_index = spr_asteroid_med;
			hp =5;
			global.camera_shake = 15;
			part_particles_create(manager_particles.particle_system,x, y,manager_particles.particle_debris_astroid,10);	
		break;
		case spr_asteroid_med:
			sprite_index = spr_asteroid_small;
			var child = instance_create_depth(x+choose(sprite_width/2,-sprite_width/2),y,depth,obj_asteroid);
			child.sprite_index = spr_asteroid_small;
			global.camera_shake = 10;
			part_particles_create(manager_particles.particle_system,x, y,manager_particles.particle_debris_astroid,7);
			hp = 3;
		break;
		case spr_asteroid_small:
			sprite_index = spr_asteroid_tiny;
			var child = instance_create_depth(x+choose(sprite_width/2,-sprite_width/2),y,depth,obj_asteroid);
			var child_second = instance_create_depth(x,y,depth,obj_asteroid);
			child.sprite_index = spr_asteroid_tiny;
			child_second.sprite_index = spr_asteroid_tiny;
			global.camera_shake = 5;
			part_particles_create(manager_particles.particle_system,x, y,manager_particles.particle_debris_astroid,5);
			hp = 2;
		break;
		case spr_asteroid_tiny:
			instance_destroy(id);
			global.camera_shake = 3;
			part_particles_create(manager_particles.particle_system,x, y,manager_particles.particle_debris_astroid,3);
		break;
	}

}

if(instance_place(x,y,obj_asteroid))
{
	speed = 0;
	if(sprite_index != spr_asteroid_tiny)
	{
		hp-=0.005;
	}
	image_blend = random_range(c_yellow,c_red);
	deflection_dir = -(direction+image_angle);
	motion_set(deflection_dir,1);

}
if(place_meeting(x,y,obj_shield))
{
	hp = 0;
}