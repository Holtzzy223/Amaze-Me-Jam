/// @description 
event_inherited();
if(target_in_range(obj_station,_range))
{
	if(instance_exists(obj_player))
	{
		if(obj_player.current_mission._type == TYPE.ESCORT && obj_player.current_mission._status = STATUS.ACTIVE)
		{
			
			move_towards_point(obj_station.x,obj_station.y,8);
			obj_player.current_mission.complete_mission();
		}
		
	}
}
if(place_meeting(x,y,obj_station))
{
	instance_destroy(id);
}