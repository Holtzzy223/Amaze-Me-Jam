// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function create_text_box()
{
	///@arg display_text
	///@arg backer
	///@arg [responses]
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
		if(argument_count > 2)
		{
			//trim response markers
			responses = argument[2];
			for(var i = 0; i< array_length(responses);i++)
			{
					var _marker_position = string_pos("~",responses[i]);
					response_scripts[i] = real(string_copy(responses[i],1,_marker_position-1));
					responses[i] = string_delete(responses[i],1,_marker_position);
			}
		}
		else
		{
			responses = [-1];
			response_scripts = [-1];
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

function dialogue_responses()
{
	///@arg response_index
	
	//Store all Responses here! i know right? 
	switch(argument0)
	{
		case 0: break;//EXIT
		//Dialogue Response Start
		case 1: create_text_box("Some Text!",0) break;
		//branch example
		case 2:	create_text_box("Pick Me?",0,["3~Know any news?","4~Mission Test","0~Branch Exit"]) break;
		case 3:	create_text_box("Nope!",0) break;
		//Station example Misison
		case 4:	
		{
			create_text_box("Mission Time!",0) 
			obj_player.current_mission = obj_station.new_mission;
			obj_player.current_mission.accept_mission();
		}break;
	}
	
	
}