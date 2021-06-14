// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_text_box()
{
	var _obj;
	if(instance_exists(obj_text_box))
	{
		_obj = obj_text_queued;
	}
	else
	{
		_obj = obj_text_box;
	}
	with(instance_create_layer(0,0,"Instances_controllers",_obj))
	{
		display_text = argument[0];
		if(is_struct(other))
		{
				_creator = self.id;
		}
		else
		if(instance_exists(other))
		{
			_creator  = other.id;
		}
		else
		{
			_creator = noone;
		}
		if(argument_count > 1)
		{
			backer = argument_count[1];
		}
		else
		{
			backer = 1;
		}
	}
	
	with(obj_player)
	{
		if(!locked)
		{
			previous_state = !locked;
			locked = true;
		}
	}
}