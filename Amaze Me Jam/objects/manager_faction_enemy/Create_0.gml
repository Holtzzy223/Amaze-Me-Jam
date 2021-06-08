/// @description Insert description here
// You can write your code in this editor
faction= FACTION.ENEMY;
image_blend =  c_red;
rotation_dir= choose(-1,1);
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
_section = 0.86;
_saturation = 0.7;
_brightness = 0.8;
_mix = 0.65;


value = 0.0;
bloom_handler = shader_get_uniform(sh_bloom,"intensity");