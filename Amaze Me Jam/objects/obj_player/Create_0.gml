/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

thruster_system = part_system_create();
thruster_emitter = part_emitter_create(thruster_system);
thruster_particle =part_type_create();
//player stuffs
shield = noone;
invincible = false;
dead = false;
hp = 10;
bullet_speed = 12;
flash = false;
input_magnitude = 65;
//Shader Stuffz
_uniUV         = shader_get_uniform(shdrRainbow, "u_uv");
_uniTime       = shader_get_uniform(shdrRainbow, "u_time");
_uniSpeed      = shader_get_uniform(shdrRainbow, "u_speed");
_uniSection    = shader_get_uniform(shdrRainbow, "u_section");
_uniSaturation = shader_get_uniform(shdrRainbow, "u_saturation"); 
_uniBrightness = shader_get_uniform(shdrRainbow, "u_brightness");
_uniMix        = shader_get_uniform(shdrRainbow, "u_mix");

_time  = 0;
_speed = .70;
_section = 0.66;
_saturation = 0.6;
_brightness = 0.8;
_mix = 0.8;


value = 0.0;
bloom_handler = shader_get_uniform(sh_bloom,"intensity");
//Local funcs


function damage_player(_damage)
{
	if(!invincible)
	{
		hp -=_damage;
		
		//Dead Check
		if(hp <=0)
		{
			repeat(25)
			{
				instance_create_layer(x,y,layer,obj_debris);
			}
			dead = true;
			alarm_set(0,120);
		}
		else
		{
			invincible = true;
			//flash
			flash = true;
			alarm_set(1,60)
			//bounce
			motion_set(-direction+random_range(-5,5),6);
		}
		
	}
}