/// @description Insert description here
// You can write your code in this editor
event_inherited()
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
_saturation = 0.7;
_brightness = 0.6;
_mix = 0.7;
obj_player.has_shield = true;
obj_player.invincible = true;