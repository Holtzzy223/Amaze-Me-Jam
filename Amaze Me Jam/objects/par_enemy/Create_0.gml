/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

base_speed = 5;
speed = base_speed;
direction =  random(360);

image_angle = direction;

hp = 1;
dead = false;
bullet_speed = 10;
invincible = false;
flash = false;
damage = 1;
thrust_counter = 0;
enemy_name = object_get_name(object_index);
function damage_enemy(_damage)
{
	if(!invincible)
	{
		hp -=_damage;
		flash = flash_time;
		//Dead Check
		if(hp <=0)
		{
			part_particles_create(manager_particles.particle_system,x, y,manager_particles.particle_debris_ship,20);
			dead = true;
			
		}
		else
		{
			invincible = true;
			//flash
			flash = flash_time;
			alarm_set(0,30);
			//bounce
			motion_set(-direction+random_range(-5,5),1);
		}
		
	}
}