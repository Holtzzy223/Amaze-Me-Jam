/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

thruster_system = part_system_create();
thruster_emitter = part_emitter_create(thruster_system);
thruster_particle =part_type_create();

shield = noone;
invincible = false;
dead = false;
bullet_speed = 5;
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