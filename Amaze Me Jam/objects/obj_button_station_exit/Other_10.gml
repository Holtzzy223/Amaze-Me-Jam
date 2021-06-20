/// @description 
save_game(SAVEFILE);
with(manager_factions)
{
	speed = base_speed;
	
}
global.game_pause = false;
with(obj_station)
{
can_dock = false;
alarm_set(1,300);
}
layer_sequence_destroy(obj_station.sequence_element);
