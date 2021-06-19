/// @description Insert description here
// You can write your code in this editor
image_angle +=rotation_dir;

if instance_exists(target)
{
	if(target_in_range(target,range))
	{	if(can_dock)
		{
			if(!layer_sequence_exists("GUI", sequence_element))
			{
				sequence_element = layer_sequence_create("GUI", display_get_gui_width()/2,display_get_gui_height()/2, seq_gui_station);
			}
			with(manager_factions)
			{
				speed = 0;
			}
			global.game_pause = true;
		}
	}
}

