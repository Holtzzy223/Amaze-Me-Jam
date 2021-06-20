/// @description 
lerp_prog += (1-lerp_prog)/timing;
text_prog += global.text_speed;

x1 = lerp(x1,x1_target,lerp_prog);
x2 = lerp(x2,x2_target,lerp_prog);

//cycle rsponses
response_up = keyboard_check_pressed(vk_up)||keyboard_check_pressed(ord("W"))
response_down = keyboard_check_pressed(vk_down)||keyboard_check_pressed(ord("S"))
response_selected += (response_down - response_up);
var _max = array_length(responses)-1;
var _min = 0;
response_selected = clamp(response_selected,_min,_max);


if(keyboard_check_pressed(vk_control))
{
	var _message_length = string_length(display_text);
	if(text_prog >= _message_length)
	{
		if(responses[0]!=-1)
		{
			with(_creator)
			{
					dialogue_responses(other.response_scripts[other.response_selected]);
			}	
		}
		//destroy text box
		instance_destroy(id);
		if(instance_exists(obj_text_queued))
		{
			with(obj_text_queued) ticket --;
		}
		else
		{
			with(obj_player)
			{
				locked = previous_state;
			}
		}
	}
	else
	{
		if(text_prog > 2)
		{
			text_prog =_message_length;
		}
	}
}