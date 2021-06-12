/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


//player stuffs
shield = noone;
invincible = false;
dead = false;
max_hp = 10;
hp = max_hp;
max_speed = 12;
bullet_speed = 12;
flash = false;
input_magnitude = 30;
thrust_counter = 0;
fire_thresh = 20;
bullet_timer = fire_thresh;
max_energy = 100;
energy = max_energy;
laser_firing = false;
object_type = OBJ_TYPE.PLAYER;
//Shader Stuffz
//ui

player_hp_draw = hp;
hp_gui_x = 1800;
hp_gui_y = 32;

value = 0.0;
bloom_handler = shader_get_uniform(sh_bloom,"intensity");
//Local funcs


function damage_player(_damage)
{
	if(!invincible)
	{
		hp -=_damage;
		invincible = true;
		//Dead Check
		if(hp <=0)
		{
			global.camera_shake = 15;
			part_particles_create(manager_particles.particle_system,x, y,manager_particles.particle_debris_ship,20);
			dead = true;
			global.player_killed = true;
			alarm_set(0,120);
		}
		else
		{
			
			//flash
			global.camera_shake = 5;
			flash = true;
			alarm_set(1,60)
			//bounce
			motion_set(-direction+random_range(-5,5),6);
		}
		
	}
}