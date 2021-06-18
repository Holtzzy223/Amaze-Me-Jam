/// @description 

with(obj_station)
{
	layer_sequence_destroy(sequence_element);
	can_dock = false;
	alarm_set(1,600);
	obj_player.current_mission = missions[1];
	obj_player.current_mission.accept_mission();
	obj_player.path_target = obj_player.current_mission._escort_target;
}
global.game_pause = false;
with(manager_factions)
{
	speed = base_speed;
}
