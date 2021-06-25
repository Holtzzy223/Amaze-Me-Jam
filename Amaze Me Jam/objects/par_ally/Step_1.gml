/// @description 
if(instance_exists(obj_player))
{
	if(obj_player.current_mission!=undefined)
	{
		if(obj_player.current_mission._type!=TYPE.ESCORT)
		{
			instance_destroy(id);
		}
	}
	if(target_in_range(obj_station,_range))
	{
		move_towards_point(obj_station.x,obj_station.y,8);
	}
	if(place_meeting(x,y,obj_station))
	{
		if(obj_player.current_mission!=undefined)
		{
			
			obj_player.current_mission._targets_fetched++;
			obj_player.allies_saved++;
			if(obj_player.current_mission._targets_fetched>=obj_player.current_mission._fetch_amount)
			{
				obj_player.current_mission.complete_mission();
			}
			
		}
		instance_destroy(id);
	}
}