/// @description 

with(obj_station)
{
	layer_sequence_destroy(sequence_element);
	can_dock = false;
	alarm_set(1,600);
	obj_player.current_mission = new_mission;
	obj_player.current_mission.accept_mission();
}
global.game_pause = false;
with(manager_factions)
{
	speed = base_speed;
}
