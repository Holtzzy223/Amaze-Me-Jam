/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


//player stuffs
shield = noone;
invincible = false;
dead = false;
hp = 10;
bullet_speed = 12;
flash = false;
input_magnitude = 65;
thrust_counter = 0;
//Shader Stuffz


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
			repeat(25)
			{
				instance_create_layer(x,y,layer,obj_debris);
			}
			dead = true;
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