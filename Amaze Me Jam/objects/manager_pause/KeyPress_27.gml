/// @description 
if (!layer_sequence_exists("GUI", sequence_element)&&!global.game_pause) 
{
	if(instance_exists(obj_player))
	{
		if(obj_player.hp >0)
		{
			global.game_pause = true;
			sequence_element = layer_sequence_create("GUI", display_get_gui_width()/2,display_get_gui_height()/2, seq_gui_pause);
			if(obj_player.hp>=1)
			{
				save_game(SAVEFILE);
			}//game_set_speed(1,gamespeed_fps);
			with(manager_factions)
			{
				speed = 0;
			}
		}
	}
}
//else 
//{
//	layer_sequence_destroy(sequence_element);
//}