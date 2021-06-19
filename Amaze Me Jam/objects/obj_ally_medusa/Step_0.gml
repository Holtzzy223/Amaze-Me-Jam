/// @description 
event_inherited();
if(target_in_range(obj_station,_range))
{		
	move_towards_point(obj_station.x,obj_station.y,8);
	if(obj_player.current_mission!=noone)
	{
		obj_player.current_mission.complete_mission();
	}
}
if(place_meeting(x,y,obj_station))
{
	instance_destroy(id);
}