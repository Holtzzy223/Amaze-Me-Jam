/// @description Insert description here
// You can write your code in this editor
event_inherited();
// Inherit the parent event

image_speed = 0;
sprite_index = choose(spr_asteroid_large,spr_asteroid_med,spr_asteroid_small,spr_asteroid_tiny);
direction = random(360);
image_angle = random(360);

motion_set(image_angle,1);
rotation_dir = choose(-1,1);
switch(sprite_index)
{
	case spr_asteroid_large:
		hp = 5;
	break;
	case spr_asteroid_med:
		hp = 3;
	break;
	case spr_asteroid_small:
		hp = 2;
	break;
	case spr_asteroid_tiny:
		hp = 1;
	break;
	default: 
		hp = 5;
}
//Shader Stuffz
_uniUV         = shader_get_uniform(shdrRainbow, "u_uv");
_uniTime       = shader_get_uniform(shdrRainbow, "u_time");
_uniSpeed      = shader_get_uniform(shdrRainbow, "u_speed");
_uniSection    = shader_get_uniform(shdrRainbow, "u_section");
_uniSaturation = shader_get_uniform(shdrRainbow, "u_saturation"); 
_uniBrightness = shader_get_uniform(shdrRainbow, "u_brightness");
_uniMix        = shader_get_uniform(shdrRainbow, "u_mix");

_time  = 0;
_speed = 1.0;
_section = 0.25;
_saturation = 0.9;
_brightness = 0.8;
_mix = 0.5;

//lazy copy :(

function damage_enemy(_damage)
{

		hp -=_damage;
		
}