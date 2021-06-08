/// @description Insert description here
// You can write your code in this editor

shader_set(shdrRainbow);
var uv = sprite_get_uvs(sprite_index, image_index);
shader_set_uniform_f(_uniUV, uv[0], uv[2]);
shader_set_uniform_f(_uniSpeed, _speed);
shader_set_uniform_f(_uniTime, _time);
shader_set_uniform_f(_uniSaturation, _saturation);
shader_set_uniform_f(_uniBrightness, _brightness);
shader_set_uniform_f(_uniSection, _section);
shader_set_uniform_f(_uniMix, _mix);
draw_self();
shader_reset();
draw_text(bbox_left-6,bbox_top-6,hp);
