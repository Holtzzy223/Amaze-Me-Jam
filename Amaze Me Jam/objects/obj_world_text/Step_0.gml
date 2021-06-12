/// @description Insert description here
// You can write your code in this editor
/// @desc Progress Text
if(_creator!=noone)
{
	x = _creator.x + 16;
	y = _creator.y - 16;
}
letters += spd;
text_current = string_copy(text,1,floor(letters));

draw_set_font(font);
if (h == 0) h = string_height(text);
w = string_width(text_current);

//Destroy when done
if (letters >= length) && (keyboard_check_pressed(vk_anykey))
{
	instance_destroy();
	
}