/// @description 

with(obj_station)
{
	layer_sequence_destroy(sequence_element);
	can_dock = false;
	//alarm_set(1,300);
	if(!layer_sequence_exists("GUI",sequence_element))
	{
		
		sequence_element = layer_sequence_create("GUI", display_get_gui_width()/2,display_get_gui_height()/2, seq_gui_mission_desc_escort);
	}
}
