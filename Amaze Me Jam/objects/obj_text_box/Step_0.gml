/// @description 
lerp_prog += (1-lerp_prog)/timing;
text_prog += global.text_speed;

x1 = lerp(x1,x1_target,lerp_prog);
x2 = lerp(x2,x2_target,lerp_prog);

if(keyboard_check_pressed(vk_space))
{
	var _message_length = string_length(display_text);
	if(text_prog >= _message_length)
	{
		//destroy text box
		instance_destroy(id);
	}
	else
	{
		if(text_prog > 2)
		{
			text_prog =_message_length;
		}
	}
}